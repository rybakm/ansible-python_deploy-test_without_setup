from bottle import route, run, default_app


@route("/")
def index():
    """Return simple HTTP 200 response."""
    return "OK"


if __name__ == "__main__":
    run(host="localhost", port=8080)

app = default_app()
