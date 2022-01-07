
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HttpResponseState ;
typedef int HttpRequest ;
typedef scalar_t__ HttpError ;
typedef int Datum ;
typedef scalar_t__ ConnectionType ;
typedef int Connection ;


 scalar_t__ CONNECTION_MOCK ;
 int CStringGetDatum (int ) ;
 int CStringGetTextDatum (char*) ;
 int DirectFunctionCall1 (int ,int ) ;
 int ERROR ;
 scalar_t__ HTTP_ERROR_NONE ;
 int * build_request (int) ;
 int elog (int ,char*,char const*) ;
 int jsonb_in ;
 int strlen (int ) ;
 int test_string ;
 scalar_t__ ts_connection_connect (int *,char*,int *,int) ;
 int * ts_connection_create (scalar_t__) ;
 int ts_connection_destroy (int *) ;
 char* ts_connection_get_and_clear_error (int *) ;
 int ts_connection_mock_set_recv_buf (int *,int ,int ) ;
 int ts_http_request_destroy (int *) ;
 int ts_http_response_state_body_start (int *) ;
 int * ts_http_response_state_create () ;
 int ts_http_response_state_destroy (int *) ;
 char const* ts_http_response_state_status_code (int *) ;
 int ts_http_response_state_valid_status (int *) ;
 scalar_t__ ts_http_send_and_recv (int *,int *,int *) ;
 char const* ts_http_strerror (scalar_t__) ;

__attribute__((used)) static Datum
test_factory(ConnectionType type, int status, char *host, int port)
{
 Connection *conn;
 HttpRequest *req;
 HttpResponseState *rsp = ((void*)0);
 HttpError err;
 Datum json;

 conn = ts_connection_create(type);

 if (conn == ((void*)0))
  return CStringGetTextDatum("could not initialize a connection");

 if (ts_connection_connect(conn, host, ((void*)0), port) < 0)
 {
  const char *err_msg = ts_connection_get_and_clear_error(conn);

  ts_connection_destroy(conn);
  elog(ERROR, "connection error: %s", err_msg);
 }






 req = build_request(status);

 rsp = ts_http_response_state_create();

 err = ts_http_send_and_recv(conn, req, rsp);

 ts_http_request_destroy(req);
 ts_connection_destroy(conn);

 if (err != HTTP_ERROR_NONE)
  elog(ERROR, "%s", ts_http_strerror(err));

 if (!ts_http_response_state_valid_status(rsp))
  elog(ERROR,
    "endpoint sent back unexpected HTTP status: %d",
    ts_http_response_state_status_code(rsp));

 json = DirectFunctionCall1(jsonb_in, CStringGetDatum(ts_http_response_state_body_start(rsp)));

 ts_http_response_state_destroy(rsp);

 return json;
}
