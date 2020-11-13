from flask import Flask, redirect, request, render_template,session
from flask_sqlalchemy import SQLAlchemy



app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:@localhost/code'
db = SQLAlchemy(app)
app.secret_key = 'super-secret-key'


def create_app(config_filename):
    app = Flask(__name__)
    app.register_error_handler(404, page_not_found)
    return app

class Posts(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(80), unique=True)
    content = db.Column(db.String(120), unique=True)

class Code(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(80), unique=True)
    src = db.Column(db.String(80), unique=True)
    tutcode = db.Column(db.String(120), unique=True)


# @app.route('/admin-dashboard')
# def test():
#     post = Posts.query.filter_by().all()
#     codes = Code.query.filter_by().all()
#     return render_template('admin.html',post=post,codes=codes)


@app.route('/create-post',methods=['POST','GET'])
def create():
    if ('user' in session and session['user'] == 'junaidansari1010444agmail.com'):
        if(request.method=='POST'):
            title = request.form.get('title')
            content = request.form.get('content')
            entry = Posts(title=title,content=content)
            db.session.add(entry)
            db.session.commit()
            return redirect('/')
        return render_template('create.html')


@app.route("/dashboard", methods=['GET','POST'])
def dashboard():
    if ('user' in session and session['user'] == 'junaidansari1010444agmail.com'):
        post = Posts.query.filter_by().all()
        codes = Code.query.filter_by().all()
        return render_template('admin.html',post=post,codes=codes)


    if(request.method=='POST'):
        username = request.form.get('username')
        userpass = request.form.get('userpass')
        if (username == 'junaidansari1010444agmail.com' and userpass == 'screenshot123'):
            #set the session variable
            session['user'] = username
            post = Posts.query.filter_by().all()
            codes = Code.query.filter_by().all()
            return render_template('admin.html', post=post,codes=codes)

    return render_template('login.html')



@app.route('/add-code',methods=['POST','GET'])
def add_code():
    if ('user' in session and session['user'] == 'junaidansari1010444agmail.com'):
        if(request.method=='POST'):
            title = request.form.get('title')
            src = request.form.get('src')
            tutcode = request.form.get('code')
            code = Code(title=title,src=src,tutcode=tutcode)
            db.session.add(code)
            db.session.commit()
            return redirect('/dashboard')
        return render_template('add.html')


@app.route("/logout")
def logout():
    session.pop('user')
    return redirect('/dashboard')


@app.route('/code/<int:Code_id>')
def scode(Code_id):
    code = Code.query.filter_by(id=Code_id).one()
    return render_template('fcode.html', code=code)

@app.route('/post/<int:Posts_id>')
def post(Posts_id):
    posts = Posts.query.filter_by(id=Posts_id).one()
    return render_template('post.html', post=posts)


@app.route('/')
def temp():
    post = Posts.query.filter_by().all()
    return render_template('index.html',posts=post)

@app.route('/code')
def code():
    codes = Code.query.filter_by().all()
    return render_template('code.html',codes=codes)

@app.route('/delete/<int:Posts_id>')
def delete(Posts_id):
    if ('user' in session and session['user'] == 'junaidansari1010444agmail.com'):
        post = Posts.query.filter_by(id=Posts_id).one()
        db.session.delete(post)
        db.session.commit()
        return redirect('/')

@app.route('/delete-code/<int:Code_id>')
def delete_code(Code_id):
    if ('user' in session and session['user'] == 'junaidansari1010444agmail.com'):
        code = Code.query.filter_by(id=Code_id).one()
        db.session.delete(code)
        db.session.commit()
        return redirect('/dashboard')


@app.errorhandler(404)
def page_not_found(e):
  return render_template('404.html'), 404


if __name__ == '__main__':
    app.run(debug=True, threaded=True)