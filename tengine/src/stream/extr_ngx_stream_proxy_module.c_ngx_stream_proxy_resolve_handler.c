
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_21__ {scalar_t__ tries; int start_time; } ;
struct TYPE_22__ {TYPE_3__ peer; TYPE_5__* resolved; } ;
typedef TYPE_4__ ngx_stream_upstream_t ;
struct TYPE_23__ {size_t naddrs; int * ctx; TYPE_1__* addrs; } ;
typedef TYPE_5__ ngx_stream_upstream_resolved_t ;
struct TYPE_24__ {TYPE_2__* connection; TYPE_4__* upstream; } ;
typedef TYPE_6__ ngx_stream_session_t ;
struct TYPE_25__ {scalar_t__ next_upstream_tries; } ;
typedef TYPE_7__ ngx_stream_proxy_srv_conf_t ;
struct TYPE_26__ {int len; int * data; } ;
typedef TYPE_8__ ngx_str_t ;
struct TYPE_27__ {size_t naddrs; TYPE_1__* addrs; scalar_t__ state; int name; TYPE_6__* data; } ;
typedef TYPE_9__ ngx_resolver_ctx_t ;
struct TYPE_20__ {int log; } ;
struct TYPE_19__ {int socklen; int sockaddr; } ;


 int NGX_LOG_DEBUG_STREAM ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int NGX_SOCKADDR_STRLEN ;
 int NGX_STREAM_INTERNAL_SERVER_ERROR ;
 int ngx_current_msec ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_8__*) ;
 int ngx_log_error (int ,int ,int ,char*,int *,scalar_t__,int ) ;
 int ngx_resolve_name_done (TYPE_9__*) ;
 int ngx_resolver_strerror (scalar_t__) ;
 int ngx_sock_ntop (int ,int ,int *,int,int ) ;
 TYPE_7__* ngx_stream_get_module_srv_conf (TYPE_6__*,int ) ;
 int ngx_stream_proxy_connect (TYPE_6__*) ;
 int ngx_stream_proxy_finalize (TYPE_6__*,int ) ;
 int ngx_stream_proxy_module ;
 scalar_t__ ngx_stream_upstream_create_round_robin_peer (TYPE_6__*,TYPE_5__*) ;

__attribute__((used)) static void
ngx_stream_proxy_resolve_handler(ngx_resolver_ctx_t *ctx)
{
    ngx_stream_session_t *s;
    ngx_stream_upstream_t *u;
    ngx_stream_proxy_srv_conf_t *pscf;
    ngx_stream_upstream_resolved_t *ur;

    s = ctx->data;

    u = s->upstream;
    ur = u->resolved;

    ngx_log_debug0(NGX_LOG_DEBUG_STREAM, s->connection->log, 0,
                   "stream upstream resolve");

    if (ctx->state) {
        ngx_log_error(NGX_LOG_ERR, s->connection->log, 0,
                      "%V could not be resolved (%i: %s)",
                      &ctx->name, ctx->state,
                      ngx_resolver_strerror(ctx->state));

        ngx_stream_proxy_finalize(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        return;
    }

    ur->naddrs = ctx->naddrs;
    ur->addrs = ctx->addrs;
    if (ngx_stream_upstream_create_round_robin_peer(s, ur) != NGX_OK) {
        ngx_stream_proxy_finalize(s, NGX_STREAM_INTERNAL_SERVER_ERROR);
        return;
    }

    ngx_resolve_name_done(ctx);
    ur->ctx = ((void*)0);

    u->peer.start_time = ngx_current_msec;

    pscf = ngx_stream_get_module_srv_conf(s, ngx_stream_proxy_module);

    if (pscf->next_upstream_tries
        && u->peer.tries > pscf->next_upstream_tries)
    {
        u->peer.tries = pscf->next_upstream_tries;
    }

    ngx_stream_proxy_connect(s);
}
