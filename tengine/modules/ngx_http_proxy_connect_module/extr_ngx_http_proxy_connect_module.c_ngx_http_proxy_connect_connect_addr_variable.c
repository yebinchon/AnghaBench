
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ngx_int_t ;
struct TYPE_10__ {int not_found; int valid; int data; scalar_t__ no_cacheable; int len; } ;
typedef TYPE_3__ ngx_http_variable_value_t ;
typedef int ngx_http_request_t ;
struct TYPE_9__ {TYPE_1__* name; } ;
struct TYPE_11__ {TYPE_2__ peer; } ;
typedef TYPE_4__ ngx_http_proxy_connect_upstream_t ;
struct TYPE_12__ {TYPE_4__* u; } ;
typedef TYPE_5__ ngx_http_proxy_connect_ctx_t ;
struct TYPE_8__ {int data; int len; } ;


 int NGX_OK ;
 TYPE_5__* ngx_http_get_module_ctx (int *,int ) ;
 int ngx_http_proxy_connect_module ;

__attribute__((used)) static ngx_int_t
ngx_http_proxy_connect_connect_addr_variable(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{

    ngx_http_proxy_connect_upstream_t *u;
    ngx_http_proxy_connect_ctx_t *ctx;

    ctx = ngx_http_get_module_ctx(r, ngx_http_proxy_connect_module);

    if (ctx == ((void*)0)) {
        v->not_found = 1;
        return NGX_OK;
    }

    u = ctx->u;

    if (u == ((void*)0) || u->peer.name == ((void*)0)) {
        v->not_found = 1;
        return NGX_OK;
    }

    v->len = u->peer.name->len;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;
    v->data = u->peer.name->data;

    return NGX_OK;
}
