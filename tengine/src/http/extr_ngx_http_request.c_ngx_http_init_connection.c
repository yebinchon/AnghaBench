
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_9__ ;
typedef struct TYPE_43__ TYPE_8__ ;
typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_16__ ;
typedef struct TYPE_34__ TYPE_15__ ;
typedef struct TYPE_33__ TYPE_14__ ;
typedef struct TYPE_32__ TYPE_12__ ;
typedef struct TYPE_31__ TYPE_11__ ;
typedef struct TYPE_30__ TYPE_10__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_36__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
typedef int ngx_uint_t ;
struct TYPE_43__ {int enable; } ;
typedef TYPE_8__ ngx_http_v2_srv_conf_t ;
struct TYPE_44__ {scalar_t__ enable; } ;
typedef TYPE_9__ ngx_http_ssl_srv_conf_t ;
struct TYPE_30__ {int naddrs; TYPE_12__* addrs; } ;
typedef TYPE_10__ ngx_http_port_t ;
struct TYPE_31__ {int * current_request; int * request; TYPE_16__* connection; } ;
typedef TYPE_11__ ngx_http_log_ctx_t ;
struct TYPE_40__ {scalar_t__ proxy_protocol; scalar_t__ ssl; scalar_t__ http2; TYPE_3__* default_server; } ;
struct TYPE_32__ {TYPE_5__ conf; int addr; int addr6; } ;
typedef TYPE_12__ ngx_http_in_addr_t ;
typedef TYPE_12__ ngx_http_in6_addr_t ;
struct TYPE_33__ {int ssl; int proxy_protocol; TYPE_5__* addr_conf; int conf_ctx; } ;
typedef TYPE_14__ ngx_http_connection_t ;
struct TYPE_34__ {int (* handler ) (TYPE_15__*) ;scalar_t__ ready; } ;
typedef TYPE_15__ ngx_event_t ;
struct TYPE_35__ {TYPE_7__* listening; TYPE_6__* log; TYPE_4__* write; TYPE_15__* read; int log_error; int number; int pool; TYPE_2__* local_sockaddr; TYPE_14__* data; } ;
typedef TYPE_16__ ngx_connection_t ;
struct TYPE_42__ {int post_accept_timeout; TYPE_10__* servers; } ;
struct TYPE_41__ {char* action; TYPE_11__* data; int handler; int connection; } ;
struct TYPE_39__ {int handler; } ;
struct TYPE_38__ {int ctx; } ;
struct TYPE_37__ {int sa_family; } ;



 int NGX_ERROR_INFO ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (TYPE_15__*,int ) ;
 scalar_t__ ngx_connection_local_sockaddr (TYPE_16__*,int *,int ) ;
 scalar_t__ ngx_handle_read_event (TYPE_15__*,int ) ;
 int ngx_http_close_connection (TYPE_16__*) ;
 int ngx_http_empty_handler ;
 void* ngx_http_get_module_srv_conf (int ,int ) ;
 int ngx_http_log_error ;
 int ngx_http_ssl_handshake (TYPE_15__*) ;
 int ngx_http_ssl_module ;
 int ngx_http_v2_init (TYPE_15__*) ;
 int ngx_http_v2_module ;
 int ngx_http_wait_request_handler (TYPE_15__*) ;
 int ngx_memcmp (int *,int *,int) ;
 TYPE_11__* ngx_palloc (int ,int) ;
 TYPE_14__* ngx_pcalloc (int ,int) ;
 int ngx_post_event (TYPE_15__*,int *) ;
 int ngx_posted_events ;
 int ngx_reusable_connection (TYPE_16__*,int) ;
 scalar_t__ ngx_use_accept_mutex ;
 int stub1 (TYPE_15__*) ;

void
ngx_http_init_connection(ngx_connection_t *c)
{
    ngx_uint_t i;
    ngx_event_t *rev;
    struct sockaddr_in *sin;
    ngx_http_port_t *port;
    ngx_http_in_addr_t *addr;
    ngx_http_log_ctx_t *ctx;
    ngx_http_connection_t *hc;
    hc = ngx_pcalloc(c->pool, sizeof(ngx_http_connection_t));
    if (hc == ((void*)0)) {
        ngx_http_close_connection(c);
        return;
    }

    c->data = hc;



    port = c->listening->servers;

    if (port->naddrs > 1) {







        if (ngx_connection_local_sockaddr(c, ((void*)0), 0) != NGX_OK) {
            ngx_http_close_connection(c);
            return;
        }

        switch (c->local_sockaddr->sa_family) {
        default:
            sin = (struct sockaddr_in *) c->local_sockaddr;

            addr = port->addrs;



            for (i = 0; i < port->naddrs - 1; i++) {
                if (addr[i].addr == sin->sin_addr.s_addr) {
                    break;
                }
            }

            hc->addr_conf = &addr[i].conf;

            break;
        }

    } else {

        switch (c->local_sockaddr->sa_family) {
        default:
            addr = port->addrs;
            hc->addr_conf = &addr[0].conf;
            break;
        }
    }


    hc->conf_ctx = hc->addr_conf->default_server->ctx;

    ctx = ngx_palloc(c->pool, sizeof(ngx_http_log_ctx_t));
    if (ctx == ((void*)0)) {
        ngx_http_close_connection(c);
        return;
    }

    ctx->connection = c;
    ctx->request = ((void*)0);
    ctx->current_request = ((void*)0);

    c->log->connection = c->number;
    c->log->handler = ngx_http_log_error;
    c->log->data = ctx;
    c->log->action = "waiting for request";

    c->log_error = NGX_ERROR_INFO;

    rev = c->read;
    rev->handler = ngx_http_wait_request_handler;
    c->write->handler = ngx_http_empty_handler;
    if (hc->addr_conf->proxy_protocol) {
        hc->proxy_protocol = 1;
        c->log->action = "reading PROXY protocol";
    }

    if (rev->ready) {


        if (ngx_use_accept_mutex) {
            ngx_post_event(rev, &ngx_posted_events);
            return;
        }

        rev->handler(rev);
        return;
    }

    ngx_add_timer(rev, c->listening->post_accept_timeout);
    ngx_reusable_connection(c, 1);

    if (ngx_handle_read_event(rev, 0) != NGX_OK) {
        ngx_http_close_connection(c);
        return;
    }
}
