
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_20__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_11__ ;


struct TYPE_26__ {TYPE_6__* data; int handler; } ;
typedef TYPE_3__ ngx_pool_cleanup_t ;
struct TYPE_27__ {int pool_size; int concurrent_streams; int concurrent_pushes; } ;
typedef TYPE_4__ ngx_http_v2_srv_conf_t ;
typedef int ngx_http_v2_node_t ;
struct TYPE_28__ {int * recv_buffer; int recv_buffer_size; } ;
typedef TYPE_5__ ngx_http_v2_main_conf_t ;
struct TYPE_23__ {int handler; } ;
struct TYPE_29__ {int closed; int dependencies; int waiting; scalar_t__ proxy_protocol; TYPE_1__ state; int * streams_index; int * pool; TYPE_9__* connection; int priority_limit; int concurrent_pushes; int conf_ctx; int frame_size; void* init_window; void* recv_window; void* send_window; struct TYPE_29__* http_connection; } ;
typedef TYPE_6__ ngx_http_v2_connection_t ;
typedef TYPE_6__ ngx_http_connection_t ;
struct TYPE_30__ {int (* handler ) (TYPE_8__*) ;TYPE_9__* data; } ;
typedef TYPE_8__ ngx_event_t ;
struct TYPE_31__ {int idle; TYPE_2__* write; TYPE_6__* data; int pool; TYPE_11__* log; } ;
typedef TYPE_9__ ngx_connection_t ;
struct TYPE_25__ {int handler; } ;
struct TYPE_24__ {int pool; } ;
struct TYPE_22__ {char* action; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_V2_DEFAULT_FRAME_SIZE ;
 void* NGX_HTTP_V2_DEFAULT_WINDOW ;
 void* NGX_HTTP_V2_MAX_WINDOW ;
 int NGX_LOG_DEBUG_HTTP ;
 int * ngx_create_pool (int ,TYPE_11__*) ;
 TYPE_20__* ngx_cycle ;
 int ngx_http_close_connection (TYPE_9__*) ;
 TYPE_5__* ngx_http_get_module_main_conf (int ,int ) ;
 TYPE_4__* ngx_http_get_module_srv_conf (int ,int ) ;
 int ngx_http_v2_index_size (TYPE_4__*) ;
 int ngx_http_v2_module ;
 int ngx_http_v2_pool_cleanup ;
 int ngx_http_v2_read_handler (TYPE_8__*) ;
 scalar_t__ ngx_http_v2_send_settings (TYPE_6__*) ;
 scalar_t__ ngx_http_v2_send_window_update (TYPE_6__*,int ,void*) ;
 int ngx_http_v2_state_preface ;
 int ngx_http_v2_state_proxy_protocol ;
 int ngx_http_v2_write_handler ;
 int ngx_log_debug0 (int ,TYPE_11__*,int ,char*) ;
 int * ngx_palloc (int ,int ) ;
 void* ngx_pcalloc (int ,int) ;
 TYPE_3__* ngx_pool_cleanup_add (int ,int ) ;
 int ngx_queue_init (int *) ;

void
ngx_http_v2_init(ngx_event_t *rev)
{
    ngx_connection_t *c;
    ngx_pool_cleanup_t *cln;
    ngx_http_connection_t *hc;
    ngx_http_v2_srv_conf_t *h2scf;
    ngx_http_v2_main_conf_t *h2mcf;
    ngx_http_v2_connection_t *h2c;

    c = rev->data;
    hc = c->data;

    ngx_log_debug0(NGX_LOG_DEBUG_HTTP, c->log, 0, "init http2 connection");

    c->log->action = "processing HTTP/2 connection";

    h2mcf = ngx_http_get_module_main_conf(hc->conf_ctx, ngx_http_v2_module);

    if (h2mcf->recv_buffer == ((void*)0)) {
        h2mcf->recv_buffer = ngx_palloc(ngx_cycle->pool,
                                        h2mcf->recv_buffer_size);
        if (h2mcf->recv_buffer == ((void*)0)) {
            ngx_http_close_connection(c);
            return;
        }
    }

    h2c = ngx_pcalloc(c->pool, sizeof(ngx_http_v2_connection_t));
    if (h2c == ((void*)0)) {
        ngx_http_close_connection(c);
        return;
    }

    h2c->connection = c;
    h2c->http_connection = hc;

    h2c->send_window = NGX_HTTP_V2_DEFAULT_WINDOW;
    h2c->recv_window = NGX_HTTP_V2_MAX_WINDOW;

    h2c->init_window = NGX_HTTP_V2_DEFAULT_WINDOW;

    h2c->frame_size = NGX_HTTP_V2_DEFAULT_FRAME_SIZE;

    h2scf = ngx_http_get_module_srv_conf(hc->conf_ctx, ngx_http_v2_module);

    h2c->concurrent_pushes = h2scf->concurrent_pushes;
    h2c->priority_limit = h2scf->concurrent_streams;

    h2c->pool = ngx_create_pool(h2scf->pool_size, h2c->connection->log);
    if (h2c->pool == ((void*)0)) {
        ngx_http_close_connection(c);
        return;
    }

    cln = ngx_pool_cleanup_add(c->pool, 0);
    if (cln == ((void*)0)) {
        ngx_http_close_connection(c);
        return;
    }

    cln->handler = ngx_http_v2_pool_cleanup;
    cln->data = h2c;

    h2c->streams_index = ngx_pcalloc(c->pool, ngx_http_v2_index_size(h2scf)
                                              * sizeof(ngx_http_v2_node_t *));
    if (h2c->streams_index == ((void*)0)) {
        ngx_http_close_connection(c);
        return;
    }

    if (ngx_http_v2_send_settings(h2c) == NGX_ERROR) {
        ngx_http_close_connection(c);
        return;
    }

    if (ngx_http_v2_send_window_update(h2c, 0, NGX_HTTP_V2_MAX_WINDOW
                                               - NGX_HTTP_V2_DEFAULT_WINDOW)
        == NGX_ERROR)
    {
        ngx_http_close_connection(c);
        return;
    }

    h2c->state.handler = hc->proxy_protocol ? ngx_http_v2_state_proxy_protocol
                                            : ngx_http_v2_state_preface;

    ngx_queue_init(&h2c->waiting);
    ngx_queue_init(&h2c->dependencies);
    ngx_queue_init(&h2c->closed);

    c->data = h2c;

    rev->handler = ngx_http_v2_read_handler;
    c->write->handler = ngx_http_v2_write_handler;

    c->idle = 1;

    ngx_http_v2_read_handler(rev);
}
