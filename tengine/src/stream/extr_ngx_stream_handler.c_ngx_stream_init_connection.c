
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_49__ TYPE_9__ ;
typedef struct TYPE_48__ TYPE_8__ ;
typedef struct TYPE_47__ TYPE_7__ ;
typedef struct TYPE_46__ TYPE_6__ ;
typedef struct TYPE_45__ TYPE_5__ ;
typedef struct TYPE_44__ TYPE_4__ ;
typedef struct TYPE_43__ TYPE_3__ ;
typedef struct TYPE_42__ TYPE_30__ ;
typedef struct TYPE_41__ TYPE_2__ ;
typedef struct TYPE_40__ TYPE_1__ ;
typedef struct TYPE_39__ TYPE_16__ ;
typedef struct TYPE_38__ TYPE_15__ ;
typedef struct TYPE_37__ TYPE_14__ ;
typedef struct TYPE_36__ TYPE_13__ ;
typedef struct TYPE_35__ TYPE_12__ ;
typedef struct TYPE_34__ TYPE_10__ ;


typedef int u_char ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_43__ {int s_addr; } ;
struct sockaddr_in {TYPE_3__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
typedef int ngx_uint_t ;
struct TYPE_47__ {int msec; int sec; } ;
typedef TYPE_7__ ngx_time_t ;
typedef int ngx_stream_variable_value_t ;
struct TYPE_48__ {int start_msec; int start_sec; int * variables; TYPE_16__* connection; int * ctx; int received; int ssl; int srv_conf; int main_conf; TYPE_14__* addr_conf; int signature; } ;
typedef TYPE_8__ ngx_stream_session_t ;
struct TYPE_49__ {int naddrs; TYPE_10__* addrs; } ;
typedef TYPE_9__ ngx_stream_port_t ;
struct TYPE_37__ {scalar_t__ proxy_protocol; int addr_text; int ssl; scalar_t__ default_server; TYPE_4__* ctx; } ;
struct TYPE_34__ {TYPE_14__ conf; int addr; int addr6; } ;
typedef TYPE_10__ ngx_stream_in_addr_t ;
typedef TYPE_10__ ngx_stream_in6_addr_t ;
struct TYPE_35__ {int proxy_protocol_timeout; int error_log; TYPE_5__* ctx; } ;
typedef TYPE_12__ ngx_stream_core_srv_conf_t ;
struct TYPE_40__ {int nelts; } ;
struct TYPE_36__ {TYPE_1__ variables; } ;
typedef TYPE_13__ ngx_stream_core_main_conf_t ;
typedef TYPE_14__ ngx_stream_addr_conf_t ;
struct TYPE_38__ {int (* handler ) (TYPE_15__*) ;int ready; } ;
typedef TYPE_15__ ngx_event_t ;
struct TYPE_39__ {scalar_t__ type; TYPE_30__* log; TYPE_15__* read; int pool; int log_error; int number; int socklen; int sockaddr; TYPE_8__* data; TYPE_6__* buffer; struct sockaddr* local_sockaddr; TYPE_2__* listening; } ;
typedef TYPE_16__ ngx_connection_t ;
struct TYPE_46__ {scalar_t__ pos; scalar_t__ last; } ;
struct TYPE_45__ {int srv_conf; int main_conf; } ;
struct TYPE_44__ {int srv_conf; int main_conf; } ;
struct TYPE_42__ {char* action; TYPE_8__* data; int handler; int connection; } ;
struct TYPE_41__ {TYPE_9__* servers; } ;



 int NGX_ERROR_INFO ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int NGX_SOCKADDR_STRLEN ;
 int NGX_STREAM_INTERNAL_SERVER_ERROR ;
 int NGX_STREAM_MODULE ;
 scalar_t__ SOCK_DGRAM ;
 int ngx_add_timer (TYPE_15__*,int ) ;
 scalar_t__ ngx_connection_local_sockaddr (TYPE_16__*,int *,int ) ;
 scalar_t__ ngx_handle_read_event (TYPE_15__*,int ) ;
 int ngx_log_error (int ,TYPE_30__*,int ,char*,int ,char*,size_t,int *,int *) ;
 int ngx_memcmp (int *,int *,int) ;
 void* ngx_pcalloc (int ,int) ;
 int ngx_post_event (TYPE_15__*,int *) ;
 int ngx_posted_events ;
 int ngx_set_connection_log (TYPE_16__*,int ) ;
 size_t ngx_sock_ntop (int ,int ,int *,int,int) ;
 int ngx_stream_close_connection (TYPE_16__*) ;
 int ngx_stream_core_module ;
 int ngx_stream_finalize_session (TYPE_8__*,int ) ;
 TYPE_13__* ngx_stream_get_module_main_conf (TYPE_8__*,int ) ;
 TYPE_12__* ngx_stream_get_module_srv_conf (TYPE_8__*,int ) ;
 int ngx_stream_log_error ;
 int ngx_stream_max_module ;
 int ngx_stream_proxy_protocol_handler (TYPE_15__*) ;
 int ngx_stream_session_handler (TYPE_15__*) ;
 TYPE_7__* ngx_timeofday () ;
 scalar_t__ ngx_use_accept_mutex ;
 int stub1 (TYPE_15__*) ;

void
ngx_stream_init_connection(ngx_connection_t *c)
{
    u_char text[NGX_SOCKADDR_STRLEN];
    size_t len;
    ngx_uint_t i;
    ngx_time_t *tp;
    ngx_event_t *rev;
    struct sockaddr *sa;
    ngx_stream_port_t *port;
    struct sockaddr_in *sin;
    ngx_stream_in_addr_t *addr;
    ngx_stream_session_t *s;
    ngx_stream_addr_conf_t *addr_conf;




    ngx_stream_core_srv_conf_t *cscf;
    ngx_stream_core_main_conf_t *cmcf;



    port = c->listening->servers;

    if (port->naddrs > 1) {
        if (ngx_connection_local_sockaddr(c, ((void*)0), 0) != NGX_OK) {
            ngx_stream_close_connection(c);
            return;
        }

        sa = c->local_sockaddr;

        switch (sa->sa_family) {
        default:
            sin = (struct sockaddr_in *) sa;

            addr = port->addrs;



            for (i = 0; i < port->naddrs - 1; i++) {
                if (addr[i].addr == sin->sin_addr.s_addr) {
                    break;
                }
            }

            addr_conf = &addr[i].conf;

            break;
        }

    } else {
        switch (c->local_sockaddr->sa_family) {
        default:
            addr = port->addrs;
            addr_conf = &addr[0].conf;
            break;
        }
    }

    s = ngx_pcalloc(c->pool, sizeof(ngx_stream_session_t));
    if (s == ((void*)0)) {
        ngx_stream_close_connection(c);
        return;
    }

    s->signature = NGX_STREAM_MODULE;
    s->main_conf = addr_conf->ctx->main_conf;
    s->srv_conf = addr_conf->ctx->srv_conf;
    if (c->buffer) {
        s->received += c->buffer->last - c->buffer->pos;
    }

    s->connection = c;
    c->data = s;

    cscf = ngx_stream_get_module_srv_conf(s, ngx_stream_core_module);

    ngx_set_connection_log(c, cscf->error_log);

    len = ngx_sock_ntop(c->sockaddr, c->socklen, text, NGX_SOCKADDR_STRLEN, 1);

    ngx_log_error(NGX_LOG_INFO, c->log, 0, "*%uA %sclient %*s connected to %V",
                  c->number, c->type == SOCK_DGRAM ? "udp " : "",
                  len, text, &addr_conf->addr_text);

    c->log->connection = c->number;
    c->log->handler = ngx_stream_log_error;
    c->log->data = s;
    c->log->action = "initializing session";
    c->log_error = NGX_ERROR_INFO;

    s->ctx = ngx_pcalloc(c->pool, sizeof(void *) * ngx_stream_max_module);
    if (s->ctx == ((void*)0)) {
        ngx_stream_close_connection(c);
        return;
    }

    cmcf = ngx_stream_get_module_main_conf(s, ngx_stream_core_module);

    s->variables = ngx_pcalloc(s->connection->pool,
                               cmcf->variables.nelts
                               * sizeof(ngx_stream_variable_value_t));

    if (s->variables == ((void*)0)) {
        ngx_stream_close_connection(c);
        return;
    }

    tp = ngx_timeofday();
    s->start_sec = tp->sec;
    s->start_msec = tp->msec;

    rev = c->read;
    rev->handler = ngx_stream_session_handler;

    if (addr_conf->proxy_protocol) {
        c->log->action = "reading PROXY protocol";

        rev->handler = ngx_stream_proxy_protocol_handler;

        if (!rev->ready) {
            ngx_add_timer(rev, cscf->proxy_protocol_timeout);

            if (ngx_handle_read_event(rev, 0) != NGX_OK) {
                ngx_stream_finalize_session(s,
                                            NGX_STREAM_INTERNAL_SERVER_ERROR);
            }

            return;
        }
    }

    if (ngx_use_accept_mutex) {
        ngx_post_event(rev, &ngx_posted_events);
        return;
    }

    rev->handler(rev);
}
