
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_11__ {scalar_t__ len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_10__ {scalar_t__ content_length_n; } ;
struct TYPE_12__ {TYPE_1__ headers_out; } ;
typedef TYPE_3__ ngx_http_request_t ;
typedef int ngx_http_lua_header_val_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ ngx_atosz (int ,scalar_t__) ;
 scalar_t__ ngx_http_clear_content_length_header (TYPE_3__*,int *,TYPE_2__*) ;
 scalar_t__ ngx_http_set_builtin_header (TYPE_3__*,int *,TYPE_2__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_set_content_length_header(ngx_http_request_t *r,
    ngx_http_lua_header_val_t *hv, ngx_str_t *value)
{
    off_t len;

    if (value->len == 0) {
        return ngx_http_clear_content_length_header(r, hv, value);
    }

    len = ngx_atosz(value->data, value->len);
    if (len == NGX_ERROR) {
        return NGX_ERROR;
    }

    r->headers_out.content_length_n = len;

    return ngx_http_set_builtin_header(r, hv, value);
}
