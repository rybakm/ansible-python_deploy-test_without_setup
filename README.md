# python_deploy - test_without_setup

Simple Python webserwer for testing DebOps role [ansible-python_deploy](https://github.com/scibi/ansible-python_deploy).
Server should be installed without any setup, just create virtualenv,
install requirements and run it as a gunicorn app.

```bash
(venv) gunicorn -c gunicorn.conf.py wsgi:app
```

`GET http://localhost:8000` should respond with `HTTP 200 "OK"`.
