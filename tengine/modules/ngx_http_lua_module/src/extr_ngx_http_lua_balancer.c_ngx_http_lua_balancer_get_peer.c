
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_14__ ;
typedef struct TYPE_26__ TYPE_10__ ;


struct TYPE_32__ {int name; int * connection; scalar_t__ cached; scalar_t__ socklen; int * sockaddr; int tries; int log; } ;
typedef TYPE_5__ ngx_peer_connection_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_33__ {TYPE_4__* upstream; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_28__ {scalar_t__ (* handler ) (TYPE_6__*,TYPE_7__*,int *) ;} ;
struct TYPE_34__ {TYPE_1__ balancer; } ;
typedef TYPE_7__ ngx_http_lua_srv_conf_t ;
struct TYPE_35__ {TYPE_10__* balancer_peer_data; } ;
typedef TYPE_8__ ngx_http_lua_main_conf_t ;
struct TYPE_36__ {scalar_t__ exit_code; scalar_t__ exited; int context; } ;
typedef TYPE_9__ ngx_http_lua_ctx_t ;
struct TYPE_27__ {TYPE_2__* peers; } ;
struct TYPE_26__ {TYPE_14__ rrp; scalar_t__ more_tries; int host; scalar_t__ socklen; int * sockaddr; int total_tries; TYPE_6__* request; TYPE_7__* conf; } ;
typedef TYPE_10__ ngx_http_lua_balancer_peer_data_t ;
typedef int lua_State ;
struct TYPE_30__ {scalar_t__ tries; } ;
struct TYPE_31__ {TYPE_3__ peer; } ;
struct TYPE_29__ {scalar_t__ single; } ;


 scalar_t__ NGX_BUSY ;
 scalar_t__ NGX_DECLINED ;
 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_LUA_CONTEXT_BALANCER ;
 scalar_t__ NGX_HTTP_SPECIAL_RESPONSE ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 int dd (char*,...) ;
 TYPE_9__* ngx_http_get_module_ctx (TYPE_6__*,int ) ;
 TYPE_8__* ngx_http_get_module_main_conf (TYPE_6__*,int ) ;
 int ngx_http_lua_assert (int) ;
 TYPE_9__* ngx_http_lua_create_ctx (TYPE_6__*) ;
 int * ngx_http_lua_get_lua_vm (TYPE_6__*,TYPE_9__*) ;
 int ngx_http_lua_module ;
 int ngx_http_lua_reset_ctx (TYPE_6__*,int *,TYPE_9__*) ;
 scalar_t__ ngx_http_upstream_get_round_robin_peer (TYPE_5__*,TYPE_14__*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 scalar_t__ stub1 (TYPE_6__*,TYPE_7__*,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_balancer_get_peer(ngx_peer_connection_t *pc, void *data)
{
    lua_State *L;
    ngx_int_t rc;
    ngx_http_request_t *r;
    ngx_http_lua_ctx_t *ctx;
    ngx_http_lua_srv_conf_t *lscf;
    ngx_http_lua_main_conf_t *lmcf;
    ngx_http_lua_balancer_peer_data_t *bp = data;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                   "lua balancer peer, tries: %ui", pc->tries);

    lscf = bp->conf;

    r = bp->request;

    ngx_http_lua_assert(lscf->balancer.handler && r);

    ctx = ngx_http_get_module_ctx(r, ngx_http_lua_module);

    if (ctx == ((void*)0)) {
        ctx = ngx_http_lua_create_ctx(r);
        if (ctx == ((void*)0)) {
            return NGX_ERROR;
        }

        L = ngx_http_lua_get_lua_vm(r, ctx);

    } else {
        L = ngx_http_lua_get_lua_vm(r, ctx);

        dd("reset ctx");
        ngx_http_lua_reset_ctx(r, L, ctx);
    }

    ctx->context = NGX_HTTP_LUA_CONTEXT_BALANCER;

    bp->sockaddr = ((void*)0);
    bp->socklen = 0;
    bp->more_tries = 0;
    bp->total_tries++;

    lmcf = ngx_http_get_module_main_conf(r, ngx_http_lua_module);





    lmcf->balancer_peer_data = bp;

    rc = lscf->balancer.handler(r, lscf, L);

    if (rc == NGX_ERROR) {
        return NGX_ERROR;
    }

    if (ctx->exited && ctx->exit_code != NGX_OK) {
        rc = ctx->exit_code;
        if (rc == NGX_ERROR
            || rc == NGX_BUSY
            || rc == NGX_DECLINED



        ) {
            return rc;
        }

        if (rc > NGX_OK) {
            return NGX_ERROR;
        }
    }

    if (bp->sockaddr && bp->socklen) {
        pc->sockaddr = bp->sockaddr;
        pc->socklen = bp->socklen;
        pc->cached = 0;
        pc->connection = ((void*)0);
        pc->name = bp->host;

        bp->rrp.peers->single = 0;

        if (bp->more_tries) {
            r->upstream->peer.tries += bp->more_tries;
        }

        dd("tries: %d", (int) r->upstream->peer.tries);

        return NGX_OK;
    }

    return ngx_http_upstream_get_round_robin_peer(pc, &bp->rrp);
}
