
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* data; scalar_t__ len; } ;
struct TYPE_9__ {TYPE_2__ value; } ;
typedef TYPE_3__ ngx_table_elt_t ;
typedef int ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_7__ {TYPE_3__* location; } ;
struct TYPE_10__ {TYPE_1__ headers_out; } ;
typedef TYPE_4__ ngx_http_request_t ;
typedef int ngx_http_lua_header_val_t ;


 scalar_t__ NGX_OK ;
 scalar_t__ ngx_http_set_builtin_header (TYPE_4__*,int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_set_location_header(ngx_http_request_t *r,
    ngx_http_lua_header_val_t *hv, ngx_str_t *value)
{
    ngx_int_t rc;
    ngx_table_elt_t *h;

    rc = ngx_http_set_builtin_header(r, hv, value);
    if (rc != NGX_OK) {
        return rc;
    }






    h = r->headers_out.location;
    if (h && h->value.len && h->value.data[0] == '/') {
        r->headers_out.location = ((void*)0);
    }

    return NGX_OK;
}
