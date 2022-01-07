
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ngx_http_upstream_t ;
struct TYPE_13__ {scalar_t__ status; } ;
typedef TYPE_2__ ngx_http_upstream_state_t ;
struct TYPE_14__ {TYPE_1__* upstream_states; int * upstream; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_15__ {TYPE_6__* balancer_peer_data; } ;
typedef TYPE_4__ ngx_http_lua_main_conf_t ;
struct TYPE_16__ {int context; } ;
typedef TYPE_5__ ngx_http_lua_ctx_t ;
struct TYPE_17__ {int last_peer_state; } ;
typedef TYPE_6__ ngx_http_lua_balancer_peer_data_t ;
struct TYPE_12__ {int nelts; TYPE_2__* elts; } ;


 int NGX_ERROR ;
 int NGX_HTTP_LUA_CONTEXT_BALANCER ;
 TYPE_5__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 TYPE_4__* ngx_http_get_module_main_conf (TYPE_3__*,int ) ;
 int ngx_http_lua_module ;

int
ngx_http_lua_ffi_balancer_get_last_failure(ngx_http_request_t *r,
    int *status, char **err)
{
    ngx_http_lua_ctx_t *ctx;
    ngx_http_upstream_t *u;
    ngx_http_upstream_state_t *state;

    ngx_http_lua_balancer_peer_data_t *bp;
    ngx_http_lua_main_conf_t *lmcf;

    if (r == ((void*)0)) {
        *err = "no request found";
        return NGX_ERROR;
    }

    u = r->upstream;

    if (u == ((void*)0)) {
        *err = "no upstream found";
        return NGX_ERROR;
    }

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);
    if (ctx == ((void*)0)) {
        *err = "no ctx found";
        return NGX_ERROR;
    }

    if ((ctx->context & NGX_HTTP_LUA_CONTEXT_BALANCER) == 0) {
        *err = "API disabled in the current context";
        return NGX_ERROR;
    }

    lmcf = ngx_http_get_module_main_conf(r, ngx_http_lua_module);

    bp = lmcf->balancer_peer_data;
    if (bp == ((void*)0)) {
        *err = "no upstream peer data found";
        return NGX_ERROR;
    }

    if (r->upstream_states && r->upstream_states->nelts > 1) {
        state = r->upstream_states->elts;
        *status = (int) state[r->upstream_states->nelts - 2].status;

    } else {
        *status = 0;
    }

    return bp->last_peer_state;
}
