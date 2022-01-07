
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_23__ {int len; int data; } ;
struct TYPE_24__ {int timeout; TYPE_7__* data; int handler; TYPE_2__ name; } ;
typedef TYPE_3__ ngx_resolver_ctx_t ;
struct TYPE_25__ {scalar_t__ resolved; int log; TYPE_2__* host; } ;
typedef TYPE_4__ ngx_peer_connection_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_26__ {TYPE_3__* dyn_resolve_ctx; } ;
typedef TYPE_5__ ngx_http_upstream_t ;
struct TYPE_27__ {int fallback; scalar_t__ fail_check; scalar_t__ fail_timeout; } ;
typedef TYPE_6__ ngx_http_upstream_dynamic_srv_conf_t ;
struct TYPE_28__ {scalar_t__ (* original_get_peer ) (TYPE_4__*,int ) ;int data; TYPE_8__* request; TYPE_6__* conf; } ;
typedef TYPE_7__ ngx_http_upstream_dynamic_peer_data_t ;
struct TYPE_29__ {TYPE_1__* connection; TYPE_5__* upstream; } ;
typedef TYPE_8__ ngx_http_request_t ;
struct TYPE_30__ {int resolver_timeout; int * resolver; } ;
typedef TYPE_9__ ngx_http_core_loc_conf_t ;
struct TYPE_22__ {int log; } ;


 scalar_t__ INADDR_NONE ;
 scalar_t__ NGX_DECLINED ;
 int NGX_HTTP_BAD_GATEWAY ;
 scalar_t__ NGX_HTTP_UPSTREAM_DR_FAILED ;
 scalar_t__ NGX_HTTP_UPSTREAM_DR_OK ;


 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 TYPE_3__* NGX_NO_RESOLVER ;
 scalar_t__ NGX_OK ;
 scalar_t__ NGX_YIELD ;
 int ngx_http_core_module ;
 TYPE_9__* ngx_http_get_module_loc_conf (TYPE_8__*,int ) ;
 int ngx_http_upstream_dynamic_handler ;
 int ngx_http_upstream_finalize_request (TYPE_8__*,TYPE_5__*,int ) ;
 scalar_t__ ngx_inet_addr (int ,int ) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 scalar_t__ ngx_resolve_name (TYPE_3__*) ;
 TYPE_3__* ngx_resolve_start (int *,TYPE_3__*) ;
 scalar_t__ ngx_time () ;
 scalar_t__ stub1 (TYPE_4__*,int ) ;
 scalar_t__ stub2 (TYPE_4__*,int ) ;
 scalar_t__ stub3 (TYPE_4__*,int ) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_get_dynamic_peer(ngx_peer_connection_t *pc, void *data)
{
    ngx_http_upstream_dynamic_peer_data_t *bp = data;
    ngx_http_request_t *r;
    ngx_http_core_loc_conf_t *clcf;
    ngx_resolver_ctx_t *ctx, temp;
    ngx_http_upstream_t *u;
    ngx_int_t rc;
    ngx_http_upstream_dynamic_srv_conf_t *dscf;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                   "get dynamic peer");
    if (pc->resolved == NGX_HTTP_UPSTREAM_DR_OK) {
        return NGX_OK;
    }

    dscf = bp->conf;
    r = bp->request;
    u = r->upstream;

    if (pc->resolved == NGX_HTTP_UPSTREAM_DR_FAILED) {

        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                       "resolve failed! fallback: %ui", dscf->fallback);

        switch (dscf->fallback) {

        case 128:
            return NGX_OK;

        case 129:
            ngx_http_upstream_finalize_request(r, u, NGX_HTTP_BAD_GATEWAY);
            return NGX_YIELD;

        default:

            return NGX_DECLINED;
        }

        return NGX_DECLINED;
    }

    if (dscf->fail_check
        && (ngx_time() - dscf->fail_check < dscf->fail_timeout))
    {
        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                       "in fail timeout period, fallback: %ui", dscf->fallback);

        switch (dscf->fallback) {

        case 128:
            return bp->original_get_peer(pc, bp->data);

        case 129:
            ngx_http_upstream_finalize_request(r, u, NGX_HTTP_BAD_GATEWAY);
            return NGX_YIELD;

        default:



            return bp->original_get_peer(pc, bp->data);
        }

        return NGX_DECLINED;
    }



    rc = bp->original_get_peer(pc, bp->data);

    if (rc != NGX_OK) {
        return rc;
    }



    if (pc->host == ((void*)0)) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                       "load balancer doesn't support dyn resolve!");
        return NGX_OK;
    }

    if (ngx_inet_addr(pc->host->data, pc->host->len) != INADDR_NONE) {
        ngx_log_debug0(NGX_LOG_DEBUG_HTTP, pc->log, 0,
                       "host is an IP address, connect directly!");
        return NGX_OK;
    }

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);
    if (clcf->resolver == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "resolver has not been configured!");
        return NGX_OK;
    }

    temp.name = *pc->host;

    ctx = ngx_resolve_start(clcf->resolver, &temp);
    if (ctx == ((void*)0)) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "resolver start failed!");
        return NGX_OK;
    }

    if (ctx == NGX_NO_RESOLVER) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "resolver started but no resolver!");
        return NGX_OK;
    }

    ctx->name = *pc->host;



    ctx->handler = ngx_http_upstream_dynamic_handler;
    ctx->data = bp;
    ctx->timeout = clcf->resolver_timeout;

    u->dyn_resolve_ctx = ctx;

    if (ngx_resolve_name(ctx) != NGX_OK) {
        ngx_log_error(NGX_LOG_ERR, pc->log, 0,
                      "resolver name failed!\n");

        u->dyn_resolve_ctx = ((void*)0);

        return NGX_OK;
    }

    return NGX_YIELD;
}
