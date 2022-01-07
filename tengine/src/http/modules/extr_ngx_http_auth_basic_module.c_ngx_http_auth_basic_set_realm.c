
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char u_char ;
struct TYPE_10__ {int len; char* data; } ;
typedef TYPE_3__ ngx_str_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {TYPE_5__* www_authenticate; int headers; } ;
struct TYPE_11__ {TYPE_2__ headers_out; int pool; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_8__ {char* data; size_t len; } ;
struct TYPE_12__ {int hash; TYPE_1__ value; int key; } ;


 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_HTTP_UNAUTHORIZED ;
 char* ngx_cpymem (char*,char*,int) ;
 TYPE_5__* ngx_list_push (int *) ;
 char* ngx_pnalloc (int ,size_t) ;
 int ngx_str_set (int *,char*) ;

__attribute__((used)) static ngx_int_t
ngx_http_auth_basic_set_realm(ngx_http_request_t *r, ngx_str_t *realm)
{
    size_t len;
    u_char *basic, *p;

    r->headers_out.www_authenticate = ngx_list_push(&r->headers_out.headers);
    if (r->headers_out.www_authenticate == ((void*)0)) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    len = sizeof("Basic realm=\"\"") - 1 + realm->len;

    basic = ngx_pnalloc(r->pool, len);
    if (basic == ((void*)0)) {
        r->headers_out.www_authenticate->hash = 0;
        r->headers_out.www_authenticate = ((void*)0);
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    p = ngx_cpymem(basic, "Basic realm=\"", sizeof("Basic realm=\"") - 1);
    p = ngx_cpymem(p, realm->data, realm->len);
    *p = '"';

    r->headers_out.www_authenticate->hash = 1;
    ngx_str_set(&r->headers_out.www_authenticate->key, "WWW-Authenticate");
    r->headers_out.www_authenticate->value.data = basic;
    r->headers_out.www_authenticate->value.len = len;

    return NGX_HTTP_UNAUTHORIZED;
}
