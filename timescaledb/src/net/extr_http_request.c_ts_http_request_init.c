
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int method; } ;
typedef int HttpRequestMethod ;
typedef TYPE_1__ HttpRequest ;



void
ts_http_request_init(HttpRequest *req, HttpRequestMethod method)
{
 req->method = method;
}
