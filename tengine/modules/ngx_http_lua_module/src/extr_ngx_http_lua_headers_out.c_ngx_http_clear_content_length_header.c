
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_5__ {int content_length_n; } ;
struct TYPE_6__ {TYPE_1__ headers_out; } ;
typedef TYPE_2__ ngx_http_request_t ;
typedef int ngx_http_lua_header_val_t ;


 int ngx_http_clear_builtin_header (TYPE_2__*,int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_clear_content_length_header(ngx_http_request_t *r,
    ngx_http_lua_header_val_t *hv, ngx_str_t *value)
{
    r->headers_out.content_length_n = -1;

    return ngx_http_clear_builtin_header(r, hv, value);
}
