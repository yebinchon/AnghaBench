
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_18__ {int len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_19__ {size_t async; size_t naddrs; TYPE_7__* addrs; scalar_t__ state; int name; TYPE_5__* data; } ;
typedef TYPE_2__ ngx_resolver_ctx_t ;
struct TYPE_20__ {size_t naddrs; int * ctx; TYPE_7__* addrs; } ;
typedef TYPE_3__ ngx_http_upstream_resolved_t ;
struct TYPE_21__ {TYPE_6__* connection; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_22__ {TYPE_3__* resolved; TYPE_4__* request; } ;
typedef TYPE_5__ ngx_http_proxy_connect_upstream_t ;
struct TYPE_23__ {int log; } ;
typedef TYPE_6__ ngx_connection_t ;
typedef int in_addr_t ;
struct TYPE_24__ {int socklen; int sockaddr; } ;


 int NGX_HTTP_BAD_GATEWAY ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int NGX_SOCKADDR_STRLEN ;
 scalar_t__ ngx_http_proxy_connect_create_peer (TYPE_4__*,TYPE_3__*) ;
 int ngx_http_proxy_connect_finalize_request (TYPE_4__*,TYPE_5__*,int ) ;
 int ngx_http_proxy_connect_process_connect (TYPE_4__*,TYPE_5__*) ;
 int ngx_http_run_posted_requests (TYPE_6__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_1__*) ;
 int ngx_log_debug4 (int ,int ,int ,char*,int,int,int,int) ;
 int ngx_log_error (int ,int ,int ,char*,int *,scalar_t__,int ) ;
 int ngx_resolve_name_done (TYPE_2__*) ;
 int ngx_resolver_strerror (scalar_t__) ;
 int ngx_sock_ntop (int ,int ,int *,int,int ) ;
 int ntohl (TYPE_7__) ;

__attribute__((used)) static void
ngx_http_proxy_connect_resolve_handler(ngx_resolver_ctx_t *ctx)
{
    ngx_connection_t *c;
    ngx_http_request_t *r;
    ngx_http_upstream_resolved_t *ur;
    ngx_http_proxy_connect_upstream_t *u;





    u = ctx->data;
    r = u->request;
    ur = u->resolved;
    c = r->connection;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "proxy_connect: resolve handler");

    if (ctx->state) {
        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "proxy_connect: %V could not be resolved (%i: %s)",
                      &ctx->name, ctx->state,
                      ngx_resolver_strerror(ctx->state));

        ngx_http_proxy_connect_finalize_request(r, u, NGX_HTTP_BAD_GATEWAY);
        goto failed;
    }

    ur->naddrs = ctx->naddrs;
    ur->addrs = ctx->addrs;
    if (ngx_http_proxy_connect_create_peer(r, ur) != NGX_OK) {
        ngx_http_proxy_connect_finalize_request(r, u,
                                                NGX_HTTP_INTERNAL_SERVER_ERROR);
        goto failed;
    }

    ngx_resolve_name_done(ctx);
    ur->ctx = ((void*)0);

    ngx_http_proxy_connect_process_connect(r, u);

failed:






    ngx_http_run_posted_requests(c);

}
