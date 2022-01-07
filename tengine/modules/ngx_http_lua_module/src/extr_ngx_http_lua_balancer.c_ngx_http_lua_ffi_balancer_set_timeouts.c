
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef void* ngx_msec_t ;
struct TYPE_15__ {void* read_timeout; void* send_timeout; void* connect_timeout; TYPE_2__* conf; } ;
typedef TYPE_1__ ngx_http_upstream_t ;
struct TYPE_16__ {void* read_timeout; void* send_timeout; void* connect_timeout; } ;
typedef TYPE_2__ ngx_http_upstream_conf_t ;
struct TYPE_17__ {int pool; TYPE_1__* upstream; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_18__ {TYPE_6__* balancer_peer_data; } ;
typedef TYPE_4__ ngx_http_lua_main_conf_t ;
struct TYPE_19__ {int context; } ;
typedef TYPE_5__ ngx_http_lua_ctx_t ;
struct TYPE_20__ {int cloned_upstream_conf; } ;
typedef TYPE_6__ ngx_http_lua_balancer_peer_data_t ;


 int NGX_ERROR ;
 int NGX_HTTP_LUA_CONTEXT_BALANCER ;
 int NGX_OK ;
 TYPE_5__* ngx_http_get_module_ctx (TYPE_3__*,int ) ;
 TYPE_4__* ngx_http_get_module_main_conf (TYPE_3__*,int ) ;
 int ngx_http_lua_module ;
 int ngx_memcpy (TYPE_2__*,TYPE_2__*,int) ;
 TYPE_2__* ngx_palloc (int ,int) ;

int
ngx_http_lua_ffi_balancer_set_timeouts(ngx_http_request_t *r,
    long connect_timeout, long send_timeout, long read_timeout,
    char **err)
{
    ngx_http_lua_ctx_t *ctx;
    ngx_http_upstream_t *u;


    ngx_http_upstream_conf_t *ucf;

    ngx_http_lua_main_conf_t *lmcf;
    ngx_http_lua_balancer_peer_data_t *bp;

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


    if (!bp->cloned_upstream_conf) {



        ucf = ngx_palloc(r->pool, sizeof(ngx_http_upstream_conf_t));

        if (ucf == ((void*)0)) {
            *err = "no memory";
            return NGX_ERROR;
        }

        ngx_memcpy(ucf, u->conf, sizeof(ngx_http_upstream_conf_t));

        u->conf = ucf;
        bp->cloned_upstream_conf = 1;

    } else {
        ucf = u->conf;
    }


    if (connect_timeout > 0) {



        ucf->connect_timeout = (ngx_msec_t) connect_timeout;

    }

    if (send_timeout > 0) {



        ucf->send_timeout = (ngx_msec_t) send_timeout;

    }

    if (read_timeout > 0) {



        ucf->read_timeout = (ngx_msec_t) read_timeout;

    }

    return NGX_OK;
}
