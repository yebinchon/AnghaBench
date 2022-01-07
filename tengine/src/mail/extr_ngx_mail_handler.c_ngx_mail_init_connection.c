
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_21__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_12__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


typedef int u_char ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_28__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
typedef int ngx_uint_t ;
struct TYPE_30__ {int ssl; scalar_t__ enable; } ;
typedef TYPE_4__ ngx_mail_ssl_conf_t ;
struct TYPE_31__ {int * addr_text; TYPE_12__* connection; int srv_conf; int main_conf; int signature; } ;
typedef TYPE_5__ ngx_mail_session_t ;
struct TYPE_32__ {int naddrs; TYPE_8__* addrs; } ;
typedef TYPE_6__ ngx_mail_port_t ;
struct TYPE_33__ {TYPE_5__* session; int * client; } ;
typedef TYPE_7__ ngx_mail_log_ctx_t ;
struct TYPE_24__ {scalar_t__ ssl; int addr_text; TYPE_3__* ctx; } ;
struct TYPE_34__ {TYPE_11__ conf; int addr; int addr6; } ;
typedef TYPE_8__ ngx_mail_in_addr_t ;
typedef TYPE_8__ ngx_mail_in6_addr_t ;
struct TYPE_23__ {int error_log; } ;
typedef TYPE_10__ ngx_mail_core_srv_conf_t ;
typedef TYPE_11__ ngx_mail_addr_conf_t ;
struct TYPE_25__ {TYPE_21__* log; int log_error; int number; int addr_text; int pool; int socklen; int sockaddr; TYPE_5__* data; struct sockaddr* local_sockaddr; TYPE_1__* listening; } ;
typedef TYPE_12__ ngx_connection_t ;
struct TYPE_29__ {int srv_conf; int main_conf; } ;
struct TYPE_27__ {char* action; TYPE_7__* data; int handler; int connection; } ;
struct TYPE_26__ {TYPE_6__* servers; } ;



 int NGX_ERROR_INFO ;
 int NGX_LOG_INFO ;
 int NGX_MAIL_MODULE ;
 scalar_t__ NGX_OK ;
 int NGX_SOCKADDR_STRLEN ;
 scalar_t__ ngx_connection_local_sockaddr (TYPE_12__*,int *,int ) ;
 int ngx_log_error (int ,TYPE_21__*,int ,char*,int ,size_t,int *,int *) ;
 int ngx_mail_close_connection (TYPE_12__*) ;
 int ngx_mail_core_module ;
 void* ngx_mail_get_module_srv_conf (TYPE_5__*,int ) ;
 int ngx_mail_init_session (TYPE_12__*) ;
 int ngx_mail_log_error ;
 int ngx_mail_ssl_init_connection (int *,TYPE_12__*) ;
 int ngx_mail_ssl_module ;
 int ngx_memcmp (int *,int *,int) ;
 TYPE_7__* ngx_palloc (int ,int) ;
 TYPE_5__* ngx_pcalloc (int ,int) ;
 int ngx_set_connection_log (TYPE_12__*,int ) ;
 size_t ngx_sock_ntop (int ,int ,int *,int,int) ;

void
ngx_mail_init_connection(ngx_connection_t *c)
{
    size_t len;
    ngx_uint_t i;
    ngx_mail_port_t *port;
    struct sockaddr *sa;
    struct sockaddr_in *sin;
    ngx_mail_log_ctx_t *ctx;
    ngx_mail_in_addr_t *addr;
    ngx_mail_session_t *s;
    ngx_mail_addr_conf_t *addr_conf;
    ngx_mail_core_srv_conf_t *cscf;
    u_char text[NGX_SOCKADDR_STRLEN];
    port = c->listening->servers;

    if (port->naddrs > 1) {
        if (ngx_connection_local_sockaddr(c, ((void*)0), 0) != NGX_OK) {
            ngx_mail_close_connection(c);
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

    s = ngx_pcalloc(c->pool, sizeof(ngx_mail_session_t));
    if (s == ((void*)0)) {
        ngx_mail_close_connection(c);
        return;
    }

    s->signature = NGX_MAIL_MODULE;

    s->main_conf = addr_conf->ctx->main_conf;
    s->srv_conf = addr_conf->ctx->srv_conf;

    s->addr_text = &addr_conf->addr_text;

    c->data = s;
    s->connection = c;

    cscf = ngx_mail_get_module_srv_conf(s, ngx_mail_core_module);

    ngx_set_connection_log(c, cscf->error_log);

    len = ngx_sock_ntop(c->sockaddr, c->socklen, text, NGX_SOCKADDR_STRLEN, 1);

    ngx_log_error(NGX_LOG_INFO, c->log, 0, "*%uA client %*s connected to %V",
                  c->number, len, text, s->addr_text);

    ctx = ngx_palloc(c->pool, sizeof(ngx_mail_log_ctx_t));
    if (ctx == ((void*)0)) {
        ngx_mail_close_connection(c);
        return;
    }

    ctx->client = &c->addr_text;
    ctx->session = s;

    c->log->connection = c->number;
    c->log->handler = ngx_mail_log_error;
    c->log->data = ctx;
    c->log->action = "sending client greeting line";

    c->log_error = NGX_ERROR_INFO;
    ngx_mail_init_session(c);
}
