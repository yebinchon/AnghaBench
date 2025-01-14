
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_45__ TYPE_9__ ;
typedef struct TYPE_44__ TYPE_8__ ;
typedef struct TYPE_43__ TYPE_7__ ;
typedef struct TYPE_42__ TYPE_6__ ;
typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_25__ ;
typedef struct TYPE_36__ TYPE_1__ ;
typedef struct TYPE_35__ TYPE_17__ ;
typedef struct TYPE_34__ TYPE_16__ ;
typedef struct TYPE_33__ TYPE_15__ ;
typedef struct TYPE_32__ TYPE_14__ ;
typedef struct TYPE_31__ TYPE_13__ ;
typedef struct TYPE_30__ TYPE_12__ ;
typedef struct TYPE_29__ TYPE_11__ ;
typedef struct TYPE_28__ TYPE_10__ ;


struct TYPE_45__ {int socklen; int sockaddr; } ;
typedef TYPE_9__ ngx_peer_connection_t ;
struct TYPE_28__ {TYPE_16__* connection; } ;
typedef TYPE_10__ ngx_multi_connection_t ;
typedef int ngx_log_t ;
typedef int ngx_int_t ;
struct TYPE_41__ {TYPE_25__* log; TYPE_16__* connection; } ;
struct TYPE_43__ {TYPE_8__* pool; } ;
struct TYPE_42__ {TYPE_8__* pool; int output_filter; int thread_handler; int aio_preload; int aio_handler; } ;
struct TYPE_29__ {int multi; TYPE_5__ peer; int rewrite_cookie; int rewrite_redirect; int finalize_request; int abort_request; int process_header; int reinit_request; int create_request; int create_key; TYPE_12__* input_filter_ctx; int input_filter; int input_filter_init; int write_event_handler; int read_event_handler; int * state; int upstream; int conf; TYPE_7__ writer; TYPE_6__ output; } ;
typedef TYPE_11__ ngx_http_upstream_t ;
typedef int ngx_http_upstream_state_t ;
struct TYPE_30__ {TYPE_8__* pool; TYPE_11__* upstream; TYPE_16__* connection; int loc_conf; int srv_conf; int main_conf; TYPE_4__* main; } ;
typedef TYPE_12__ ngx_http_request_t ;
struct TYPE_31__ {TYPE_12__* request; TYPE_3__* conf; } ;
typedef TYPE_13__ ngx_http_multi_upstream_peer_data_t ;
struct TYPE_32__ {int used; int queue; int sockaddr; TYPE_3__* conf; int socklen; TYPE_16__* connection; } ;
typedef TYPE_14__ ngx_http_multi_upstream_cache_t ;
struct TYPE_33__ {TYPE_12__* current_request; TYPE_12__* request; TYPE_16__* connection; } ;
typedef TYPE_15__ ngx_http_log_ctx_t ;
struct TYPE_34__ {TYPE_25__* log; TYPE_2__* write; TYPE_1__* read; TYPE_17__* pool; int log_error; int number; TYPE_12__* data; TYPE_10__* multi_c; } ;
typedef TYPE_16__ ngx_connection_t ;
struct TYPE_44__ {TYPE_25__* log; } ;
struct TYPE_40__ {TYPE_12__* http_connection; } ;
struct TYPE_39__ {int cache; } ;
struct TYPE_38__ {TYPE_25__* log; } ;
struct TYPE_37__ {TYPE_15__* data; int * handler; int connection; } ;
struct TYPE_36__ {TYPE_25__* log; } ;
struct TYPE_35__ {TYPE_25__* log; } ;


 int NGX_ERROR ;
 int NGX_ERROR_INFO ;
 TYPE_10__* ngx_create_multi_connection (TYPE_16__*) ;
 TYPE_17__* ngx_create_pool (int,TYPE_25__*) ;
 TYPE_12__* ngx_http_create_request (TYPE_16__*) ;
 int ngx_http_multi_upstream_add_data (TYPE_16__*,TYPE_12__*) ;
 int ngx_memcpy (int *,int ,int ) ;
 void* ngx_pcalloc (TYPE_17__*,int) ;
 int ngx_queue_insert_head (int *,int *) ;

ngx_int_t
ngx_http_multi_upstream_init_connection(ngx_connection_t *c,
    ngx_peer_connection_t *pc, void *data)
{
    ngx_http_multi_upstream_peer_data_t *kp = data;
    ngx_http_multi_upstream_cache_t *item;
    ngx_multi_connection_t *multi_c;
    ngx_http_request_t *r;
    ngx_http_request_t *fake_r;
    ngx_http_log_ctx_t *log_ctx;
    ngx_http_upstream_t *u, *fake_u;

    c->pool = ngx_create_pool(128, kp->request->connection->log);
    if (c->pool == ((void*)0)) {
        return NGX_ERROR;
    }

    item = ngx_pcalloc(c->pool, sizeof(ngx_http_multi_upstream_cache_t));
    if (item == ((void*)0)) {
        return NGX_ERROR;
    }

    item->connection = c;
    item->socklen = pc->socklen;
    item->used = 1;
    item->conf = kp->conf;

    ngx_memcpy(&item->sockaddr, pc->sockaddr, pc->socklen);

    ngx_queue_insert_head(&kp->conf->cache, &item->queue);


    multi_c = ngx_create_multi_connection(c);
    multi_c->connection = c;
    c->multi_c = multi_c;

    r = kp->request;

    c->data = r->main->http_connection;
    fake_r = ngx_http_create_request(c);
    fake_r->main_conf = r->main_conf;
    fake_r->srv_conf = r->srv_conf;
    fake_r->loc_conf = r->loc_conf;
    fake_r->upstream = ngx_pcalloc(c->pool, sizeof(ngx_http_upstream_t));
    if (fake_r->upstream == ((void*)0)) {
        return NGX_ERROR;
    }

    u = r->upstream;
    fake_u = fake_r->upstream;


    fake_u->peer.connection = c;
    fake_u->output.output_filter = u->output.output_filter;
    fake_u->output.pool = fake_r->pool;
    fake_u->writer.pool = fake_r->pool;
    fake_u->input_filter_ctx = fake_r;
    fake_u->conf = u->conf;
    fake_u->upstream = u->upstream;
    fake_u->state = ngx_pcalloc(c->pool, sizeof(ngx_http_upstream_state_t));
    if (fake_u->state == ((void*)0)) {
        return NGX_ERROR;
    }

    fake_u->read_event_handler = u->read_event_handler;
    fake_u->write_event_handler = u->write_event_handler;
    fake_u->input_filter_init = u->input_filter_init;
    fake_u->input_filter = u->input_filter;
    fake_u->input_filter_ctx = ((void*)0);



    fake_u->create_request = u->create_request;
    fake_u->reinit_request = u->reinit_request;
    fake_u->process_header = u->process_header;
    fake_u->abort_request = u->abort_request;
    fake_u->finalize_request = u->finalize_request;
    fake_u->rewrite_redirect = u->rewrite_redirect;
    fake_u->rewrite_cookie = u->rewrite_cookie;


    fake_u->multi = 1;

    fake_r->connection = c;

    c->data = fake_r;

    c->log = ngx_pcalloc(c->pool, sizeof(ngx_log_t));
    if (c->log == ((void*)0)) {
        return NGX_ERROR;
    }
    *c->log = *kp->request->connection->log;

    log_ctx = ngx_pcalloc(c->pool, sizeof(ngx_http_log_ctx_t));
    if (log_ctx == ((void*)0)) {
        return NGX_ERROR;
    }

    log_ctx->connection = c;
    log_ctx->request = fake_r;
    log_ctx->current_request = fake_r;

    c->log = ngx_pcalloc(c->pool, sizeof(ngx_log_t));
    if (c->log == ((void*)0)) {
        return NGX_ERROR;
    }
    *c->log = *kp->request->connection->log;
    c->log->data = log_ctx;
    fake_r->upstream->peer.log = c->log;

    c->log->connection = c->number;
    c->log->handler = ((void*)0);
    c->log->data = log_ctx;
    c->log_error = NGX_ERROR_INFO;

    c->pool->log = c->log;

    c->read->log = c->log;
    c->write->log = c->log;
    fake_r->pool->log = c->log;

    return ngx_http_multi_upstream_add_data(c, kp->request);
}
