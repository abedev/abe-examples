import abe.App;

class Main {
  public static function main() {
    var app = new App();
    app.router.register(new RouteHandler());
    app.http(4000); // running on port 4000
  }
}
