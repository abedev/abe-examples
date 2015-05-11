class RouteHandler implements abe.IRoute {
  @:get("/")
  function index() {
    response.send('Hello World!');
  }

  @:get('/user/:id')
  function getUserById(id : Int) {
    response.send('Getting user $id');
  }

  @:post('/user')
  @:use(mw.BodyParser.json())
  @:args(Body)
  function createUser(name : String, email : String) {
    trace('Pretending to create a user...');
    response.status(201).send({
      id : Math.floor(Math.random() * 100),
      name : name,
      email : email
    });
  }
}
