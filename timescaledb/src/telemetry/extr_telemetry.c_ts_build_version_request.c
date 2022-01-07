
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__* StringInfo ;
typedef int HttpRequest ;


 int HTTP_CONTENT_LENGTH ;
 int HTTP_CONTENT_TYPE ;
 int HTTP_HOST ;
 int HTTP_POST ;
 int HTTP_VERSION_10 ;
 char const* TIMESCALE_TYPE ;
 TYPE_1__* build_version_body () ;
 int snprintf (char*,int,char*,int) ;
 int * ts_http_request_create (int ) ;
 int ts_http_request_set_body (int *,int ,int) ;
 int ts_http_request_set_header (int *,int ,char const*) ;
 int ts_http_request_set_uri (int *,char const*) ;
 int ts_http_request_set_version (int *,int ) ;

HttpRequest *
ts_build_version_request(const char *host, const char *path)
{
 char body_len_string[5];
 HttpRequest *req;
 StringInfo jtext = build_version_body();

 snprintf(body_len_string, 5, "%d", jtext->len);


 req = ts_http_request_create(HTTP_POST);

 ts_http_request_set_uri(req, path);
 ts_http_request_set_version(req, HTTP_VERSION_10);
 ts_http_request_set_header(req, HTTP_CONTENT_TYPE, TIMESCALE_TYPE);
 ts_http_request_set_header(req, HTTP_CONTENT_LENGTH, body_len_string);
 ts_http_request_set_header(req, HTTP_HOST, host);
 ts_http_request_set_body(req, jtext->data, jtext->len);

 return req;
}
