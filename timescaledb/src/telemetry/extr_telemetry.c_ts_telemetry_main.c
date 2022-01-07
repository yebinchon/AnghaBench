
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HttpResponseState ;
typedef int HttpRequest ;
typedef scalar_t__ HttpError ;
typedef int Connection ;


 int AbortCurrentTransaction () ;
 int CommitTransactionCommand () ;
 scalar_t__ HTTP_ERROR_NONE ;
 int IsTransactionOrTransactionBlock () ;
 int StartTransactionCommand () ;
 int WARNING ;
 int elog (int ,char*,int ) ;
 int process_response (int ) ;
 int * ts_build_version_request (char const*,char const*) ;
 int ts_connection_destroy (int *) ;
 int ts_http_request_destroy (int *) ;
 int ts_http_response_state_body_start (int *) ;
 int * ts_http_response_state_create () ;
 int ts_http_response_state_destroy (int *) ;
 int ts_http_response_state_status_code (int *) ;
 int ts_http_response_state_valid_status (int *) ;
 scalar_t__ ts_http_send_and_recv (int *,int *,int *) ;
 int ts_http_strerror (scalar_t__) ;
 int * ts_telemetry_connect (char const*,char const*) ;
 int ts_telemetry_on () ;

bool
ts_telemetry_main(const char *host, const char *path, const char *service)
{
 HttpError err;
 Connection *conn;
 HttpRequest *req;
 HttpResponseState *rsp;
 bool started = 0;

 if (!ts_telemetry_on())
  return 1;

 if (!IsTransactionOrTransactionBlock())
 {
  started = 1;
  StartTransactionCommand();
 }

 conn = ts_telemetry_connect(host, service);

 if (conn == ((void*)0))
  goto cleanup;

 req = ts_build_version_request(host, path);

 rsp = ts_http_response_state_create();

 err = ts_http_send_and_recv(conn, req, rsp);

 ts_http_request_destroy(req);
 ts_connection_destroy(conn);

 if (err != HTTP_ERROR_NONE)
 {
  elog(WARNING, "telemetry error: %s", ts_http_strerror(err));
  goto cleanup;
 }

 if (!ts_http_response_state_valid_status(rsp))
 {
  elog(WARNING,
    "telemetry got unexpected HTTP response status: %d",
    ts_http_response_state_status_code(rsp));
  goto cleanup;
 }





 process_response(ts_http_response_state_body_start(rsp));

 ts_http_response_state_destroy(rsp);

 if (started)
  CommitTransactionCommand();
 return 1;

cleanup:
 if (started)
  AbortCurrentTransaction();
 return 0;
}
