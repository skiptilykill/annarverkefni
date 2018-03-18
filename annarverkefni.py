from bottle import run, route, run, error, static_file, template, response
import requests
import os
import json

response = requests.get('http://apis.is/petrol')
stats = response.json()

#with open('petrol.json', 'r', encoding='utf-8') as f:
#    petrol = json.load(f)


@route('/')
def index():
    return template('index')

@route('/company/<id>')
def company(id):
    return template('company', id=id, stats=stats)


@route('/moreinfo/<key>')
def detail(key):
    return template('moreinfo',key=key, stats=stats)



@route('/static_files/<filename>')
def server_static(filename):
    return static_file(filename, root='./static_files')

@error(404)
def error404(error):
    return '<h1>síða ekki til. 404</h1>'

@error(500)
def error500(error):
    return '<h1>Error 500. Villa á miðlara</h1>'

#run()
run(host='0.0.0.0',port=os.environ.get('PORT'))