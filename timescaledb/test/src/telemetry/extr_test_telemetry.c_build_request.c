
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HttpRequest ;


 int HTTP_CONTENT_LENGTH ;
 int HTTP_GET ;
 int HTTP_HOST ;
 int HTTP_VERSION_10 ;
 char* TEST_ENDPOINT ;
 int snprintf (char*,int,char*,int) ;
 int * ts_http_request_create (int ) ;
 int ts_http_request_set_header (int *,int ,char*) ;
 int ts_http_request_set_uri (int *,char*) ;
 int ts_http_request_set_version (int *,int ) ;

__attribute__((used)) static HttpRequest *
build_request(int status)
{
 HttpRequest *req = ts_http_request_create(HTTP_GET);
 char uri[20];

 snprintf(uri, 20, "/status/%d", status);

 ts_http_request_set_uri(req, uri);
 ts_http_request_set_version(req, HTTP_VERSION_10);
 ts_http_request_set_header(req, HTTP_HOST, TEST_ENDPOINT);
 ts_http_request_set_header(req, HTTP_CONTENT_LENGTH, "0");
 return req;
}
