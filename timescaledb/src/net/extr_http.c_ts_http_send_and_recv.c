
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int off_t ;
typedef int HttpResponseState ;
typedef int HttpRequest ;
typedef scalar_t__ HttpError ;
typedef int Connection ;


 scalar_t__ HTTP_ERROR_CONN_CLOSED ;
 scalar_t__ HTTP_ERROR_INVALID_BUFFER_STATE ;
 scalar_t__ HTTP_ERROR_NONE ;
 scalar_t__ HTTP_ERROR_READ ;
 scalar_t__ HTTP_ERROR_REQUEST_BUILD ;
 scalar_t__ HTTP_ERROR_RESPONSE_INCOMPLETE ;
 scalar_t__ HTTP_ERROR_RESPONSE_PARSE ;
 scalar_t__ HTTP_ERROR_WRITE ;
 scalar_t__ ts_connection_read (int *,char*,scalar_t__) ;
 int ts_connection_write (int *,char const*,size_t) ;
 char* ts_http_request_build (int *,size_t*) ;
 int ts_http_response_state_is_done (int *) ;
 char* ts_http_response_state_next_buffer (int *,scalar_t__*) ;
 int ts_http_response_state_parse (int *,scalar_t__) ;

HttpError
ts_http_send_and_recv(Connection *conn, HttpRequest *req, HttpResponseState *state)
{
 const char *built_request;
 size_t request_len;
 off_t write_off = 0;
 HttpError err = HTTP_ERROR_NONE;
 int ret;

 built_request = ts_http_request_build(req, &request_len);

 if (((void*)0) == built_request)
  return HTTP_ERROR_REQUEST_BUILD;

 while (request_len > 0)
 {
  ret = ts_connection_write(conn, built_request + write_off, request_len);

  if (ret < 0 || ret > request_len)
   return HTTP_ERROR_WRITE;

  if (ret == 0)
   return HTTP_ERROR_CONN_CLOSED;

  write_off += ret;
  request_len -= ret;
 }

 while (err == HTTP_ERROR_NONE && !ts_http_response_state_is_done(state))
 {
  ssize_t remaining = 0;
  char *buf = ts_http_response_state_next_buffer(state, &remaining);

  if (remaining < 0)
   err = HTTP_ERROR_INVALID_BUFFER_STATE;
  else if (remaining == 0)
   err = HTTP_ERROR_RESPONSE_INCOMPLETE;
  else
  {
   ssize_t bytes_read = ts_connection_read(conn, buf, remaining);

   if (bytes_read < 0)
    err = HTTP_ERROR_READ;

   else if (bytes_read == 0)
    err = HTTP_ERROR_CONN_CLOSED;
   else if (!ts_http_response_state_parse(state, bytes_read))
    err = HTTP_ERROR_RESPONSE_PARSE;
  }
 }

 return err;
}
