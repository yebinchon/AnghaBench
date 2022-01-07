
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_10__ ;


typedef int u_char ;
struct sockaddr_in6 {void* sin6_port; } ;
struct TYPE_22__ {scalar_t__ s_addr; } ;
struct sockaddr_in {int sa_family; TYPE_3__ sin_addr; void* sin_port; } ;
struct sockaddr {int sa_family; TYPE_3__ sin_addr; void* sin_port; } ;
typedef int socklen_t ;
typedef size_t ngx_uint_t ;
struct TYPE_23__ {size_t len; int * data; } ;
typedef TYPE_4__ ngx_str_t ;
struct TYPE_24__ {size_t naddrs; TYPE_2__* addrs; scalar_t__ state; int name; TYPE_9__* data; } ;
typedef TYPE_5__ ngx_resolver_ctx_t ;
struct TYPE_25__ {int socklen; void* resolved; TYPE_4__* name; struct sockaddr_in* sockaddr; } ;
typedef TYPE_6__ ngx_peer_connection_t ;
struct TYPE_26__ {int * dyn_resolve_ctx; TYPE_6__ peer; } ;
typedef TYPE_7__ ngx_http_upstream_t ;
struct TYPE_27__ {scalar_t__ fail_check; } ;
typedef TYPE_8__ ngx_http_upstream_dynamic_srv_conf_t ;
struct TYPE_28__ {TYPE_8__* conf; TYPE_10__* request; } ;
typedef TYPE_9__ ngx_http_upstream_dynamic_peer_data_t ;
struct TYPE_19__ {TYPE_1__* connection; int pool; TYPE_7__* upstream; } ;
typedef TYPE_10__ ngx_http_request_t ;
typedef int in_port_t ;
struct TYPE_21__ {int socklen; struct sockaddr_in* sockaddr; } ;
struct TYPE_20__ {int log; } ;


 int AF_INET ;

 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 void* NGX_HTTP_UPSTREAM_DR_FAILED ;
 void* NGX_HTTP_UPSTREAM_DR_OK ;
 int NGX_INET_ADDRSTRLEN ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int NGX_SOCKADDR_STRLEN ;
 void* htons (int ) ;
 scalar_t__ ngx_cmp_sockaddr (struct sockaddr_in*,int,struct sockaddr_in*,int,int ) ;
 int ngx_http_upstream_connect (TYPE_10__*,TYPE_7__*) ;
 int ngx_http_upstream_finalize_request (TYPE_10__*,TYPE_7__*,int ) ;
 int ngx_inet_get_port (struct sockaddr_in*) ;
 size_t ngx_inet_ntop (int ,scalar_t__*,int *,int) ;
 int ngx_log_debug1 (int ,int ,int ,char*,TYPE_4__*) ;
 int ngx_log_error (int ,int ,int ,char*,int *,scalar_t__,int ) ;
 int ngx_memcpy (struct sockaddr_in*,struct sockaddr_in*,int) ;
 TYPE_4__* ngx_palloc (int ,int) ;
 struct sockaddr_in* ngx_pcalloc (int ,int) ;
 int * ngx_pnalloc (int ,size_t) ;
 int ngx_resolve_name_done (TYPE_5__*) ;
 int ngx_resolver_strerror (scalar_t__) ;
 void* ngx_sock_ntop (struct sockaddr_in*,int,int *,int,int) ;
 int * ngx_sprintf (int *,char*,int ) ;
 scalar_t__ ngx_time () ;
 int ntohs (void*) ;

__attribute__((used)) static void
ngx_http_upstream_dynamic_handler(ngx_resolver_ctx_t *ctx)
{
    ngx_http_request_t *r;
    ngx_http_upstream_t *u;
    ngx_peer_connection_t *pc;




    struct sockaddr_in *sin, *csin;

    in_port_t port;
    ngx_str_t *addr;
    u_char *p;

    size_t len;
    ngx_http_upstream_dynamic_srv_conf_t *dscf;
    ngx_http_upstream_dynamic_peer_data_t *bp;

    bp = ctx->data;
    r = bp->request;
    u = r->upstream;
    pc = &u->peer;
    dscf = bp->conf;

    if (ctx->state) {

        ngx_log_error(NGX_LOG_ERR, r->connection->log, 0,
                      "%V could not be resolved (%i: %s)",
                      &ctx->name, ctx->state,
                      ngx_resolver_strerror(ctx->state));

        dscf->fail_check = ngx_time();

        pc->resolved = NGX_HTTP_UPSTREAM_DR_FAILED;

    } else {
        dscf->fail_check = 0;
        sin = ngx_pcalloc(r->pool, sizeof(struct sockaddr_in));
        if (sin == ((void*)0)) {
            ngx_http_upstream_finalize_request(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }

        ngx_memcpy(sin, pc->sockaddr, pc->socklen);



        csin = (struct sockaddr_in *) ctx->addrs[0].sockaddr;
        if (sin->sin_addr.s_addr == csin->sin_addr.s_addr) {

            pc->resolved = NGX_HTTP_UPSTREAM_DR_OK;

            goto out;
        }

        sin->sin_addr.s_addr = csin->sin_addr.s_addr;

        len = NGX_INET_ADDRSTRLEN + sizeof(":65535") - 1;

        p = ngx_pnalloc(r->pool, len);
        if (p == ((void*)0)) {
            ngx_http_upstream_finalize_request(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }

        port = ntohs(sin->sin_port);
        len = ngx_inet_ntop(AF_INET, &sin->sin_addr.s_addr,
                            p, NGX_INET_ADDRSTRLEN);
        len = ngx_sprintf(&p[len], ":%d", port) - p;

        addr = ngx_palloc(r->pool, sizeof(ngx_str_t));
        if (addr == ((void*)0)) {
            ngx_http_upstream_finalize_request(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }

        addr->data = p;
        addr->len = len;

        pc->sockaddr = (struct sockaddr *) sin;
        pc->socklen = sizeof(struct sockaddr_in);
        pc->name = addr;


        ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                "name was resolved to %V", pc->name);

        pc->resolved = NGX_HTTP_UPSTREAM_DR_OK;
    }

out:
    ngx_resolve_name_done(ctx);
    u->dyn_resolve_ctx = ((void*)0);

    ngx_http_upstream_connect(r, u);
}
