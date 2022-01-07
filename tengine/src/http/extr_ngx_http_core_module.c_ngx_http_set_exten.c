
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_5__ {int len; char* data; } ;
struct TYPE_7__ {int len; char* data; } ;
struct TYPE_6__ {TYPE_1__ uri; TYPE_3__ exten; } ;
typedef TYPE_2__ ngx_http_request_t ;


 int ngx_str_null (TYPE_3__*) ;

void
ngx_http_set_exten(ngx_http_request_t *r)
{
    ngx_int_t i;

    ngx_str_null(&r->exten);

    for (i = r->uri.len - 1; i > 1; i--) {
        if (r->uri.data[i] == '.' && r->uri.data[i - 1] != '/') {

            r->exten.len = r->uri.len - i - 1;
            r->exten.data = &r->uri.data[i + 1];

            return;

        } else if (r->uri.data[i] == '/') {
            return;
        }
    }

    return;
}
