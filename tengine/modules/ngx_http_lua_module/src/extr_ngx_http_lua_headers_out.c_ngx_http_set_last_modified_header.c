
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_10__ {scalar_t__ last_modified_time; } ;
struct TYPE_12__ {TYPE_1__ headers_out; } ;
typedef TYPE_3__ ngx_http_request_t ;
typedef int ngx_http_lua_header_val_t ;


 int dd (char*,int) ;
 int ngx_http_clear_last_modified_header (TYPE_3__*,int *,TYPE_2__*) ;
 scalar_t__ ngx_http_parse_time (int ,scalar_t__) ;
 int ngx_http_set_builtin_header (TYPE_3__*,int *,TYPE_2__*) ;

__attribute__((used)) static ngx_int_t ngx_http_set_last_modified_header(ngx_http_request_t *r,
    ngx_http_lua_header_val_t *hv, ngx_str_t *value)
{
    if (value->len == 0) {
        return ngx_http_clear_last_modified_header(r, hv, value);
    }

    r->headers_out.last_modified_time = ngx_http_parse_time(value->data,
                                                            value->len);

    dd("last modified time: %d", (int) r->headers_out.last_modified_time);

    return ngx_http_set_builtin_header(r, hv, value);
}
