
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int data; scalar_t__ len; } ;
typedef TYPE_2__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_11__ {int not_found; int valid; int data; scalar_t__ no_cacheable; scalar_t__ len; } ;
typedef TYPE_3__ ngx_http_variable_value_t ;
struct TYPE_9__ {int cookies; } ;
struct TYPE_12__ {TYPE_1__ headers_in; } ;
typedef TYPE_4__ ngx_http_request_t ;


 scalar_t__ NGX_DECLINED ;
 int NGX_OK ;
 scalar_t__ ngx_http_parse_multi_header_lines (int *,TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_variable_cookie(ngx_http_request_t *r, ngx_http_variable_value_t *v,
    uintptr_t data)
{
    ngx_str_t *name = (ngx_str_t *) data;

    ngx_str_t cookie, s;

    s.len = name->len - (sizeof("cookie_") - 1);
    s.data = name->data + sizeof("cookie_") - 1;

    if (ngx_http_parse_multi_header_lines(&r->headers_in.cookies, &s, &cookie)
        == NGX_DECLINED)
    {
        v->not_found = 1;
        return NGX_OK;
    }

    v->len = cookie.len;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;
    v->data = cookie.data;

    return NGX_OK;
}
