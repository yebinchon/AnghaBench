
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int version; } ;
typedef int HttpVersion ;
typedef TYPE_1__ HttpRequest ;



void
ts_http_request_set_version(HttpRequest *req, HttpVersion version)
{
 req->version = version;
}
