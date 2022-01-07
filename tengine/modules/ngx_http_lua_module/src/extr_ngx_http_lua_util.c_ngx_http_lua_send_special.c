
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_6__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_5__ {TYPE_2__* data; } ;


 int ngx_http_send_special (TYPE_2__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_send_special(ngx_http_request_t *r, ngx_uint_t flags)
{
    ngx_int_t rc;
    ngx_http_request_t *ar;

    ar = r->connection->data;

    if (ar != r) {



        r->connection->data = r;
        rc = ngx_http_send_special(r, flags);
        r->connection->data = ar;
        return rc;
    }

    return ngx_http_send_special(r, flags);
}
