
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_22__ {int max_requests; int pool_size; } ;
typedef TYPE_5__ ngx_http_v2_srv_conf_t ;
struct TYPE_23__ {int * pool; TYPE_3__* connection; int idle; TYPE_2__* http_connection; } ;
typedef TYPE_6__ ngx_http_v2_connection_t ;
struct TYPE_24__ {int (* handler ) (TYPE_7__*) ;int kq_errno; scalar_t__ pending_eof; scalar_t__ timedout; TYPE_8__* data; } ;
typedef TYPE_7__ ngx_event_t ;
struct TYPE_25__ {TYPE_4__* write; scalar_t__ destroyed; TYPE_1__* ssl; int addr_text; TYPE_10__* log; scalar_t__ close; TYPE_6__* data; } ;
typedef TYPE_8__ ngx_connection_t ;
struct TYPE_21__ {int handler; } ;
struct TYPE_20__ {int log; } ;
struct TYPE_19__ {int conf_ctx; } ;
struct TYPE_18__ {int no_send_shutdown; } ;
struct TYPE_17__ {int * handler; } ;


 int NGX_HTTP_V2_INTERNAL_ERROR ;
 int NGX_HTTP_V2_NO_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 int NGX_LOG_INFO ;
 int NGX_USE_KQUEUE_EVENT ;
 int * ngx_create_pool (int ,int ) ;
 int ngx_event_flags ;
 int ngx_http_close_connection (TYPE_8__*) ;
 TYPE_5__* ngx_http_get_module_srv_conf (int ,int ) ;
 int ngx_http_v2_finalize_connection (TYPE_6__*,int ) ;
 int ngx_http_v2_module ;
 int ngx_http_v2_read_handler (TYPE_7__*) ;
 int ngx_http_v2_write_handler ;
 int ngx_log_debug0 (int ,TYPE_10__*,int ,char*) ;
 int ngx_log_error (int ,TYPE_10__*,int ,char*,...) ;
 int ngx_reusable_connection (TYPE_8__*,int ) ;

__attribute__((used)) static void
ngx_http_v2_idle_handler(ngx_event_t *rev)
{
    ngx_connection_t *c;
    ngx_http_v2_srv_conf_t *h2scf;
    ngx_http_v2_connection_t *h2c;

    c = rev->data;
    h2c = c->data;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, c->log, 0, "http2 idle handler");

    if (rev->timedout || c->close) {
        ngx_http_v2_finalize_connection(h2c, NGX_HTTP_V2_NO_ERROR);
        return;
    }
    h2scf = ngx_http_get_module_srv_conf(h2c->http_connection->conf_ctx,
                                         ngx_http_v2_module);

    if (h2c->idle++ > 10 * h2scf->max_requests) {
        ngx_log_error(NGX_LOG_INFO, h2c->connection->log, 0,
                      "http2 flood detected");
        ngx_http_v2_finalize_connection(h2c, NGX_HTTP_V2_NO_ERROR);
        return;
    }

    c->destroyed = 0;
    ngx_reusable_connection(c, 0);

    h2c->pool = ngx_create_pool(h2scf->pool_size, h2c->connection->log);
    if (h2c->pool == ((void*)0)) {
        ngx_http_v2_finalize_connection(h2c, NGX_HTTP_V2_INTERNAL_ERROR);
        return;
    }

    c->write->handler = ngx_http_v2_write_handler;

    rev->handler = ngx_http_v2_read_handler;
    ngx_http_v2_read_handler(rev);
}
