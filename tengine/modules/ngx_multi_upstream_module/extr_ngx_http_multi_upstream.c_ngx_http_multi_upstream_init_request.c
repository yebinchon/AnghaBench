
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_25__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_12__ ;
typedef struct TYPE_27__ TYPE_11__ ;
typedef struct TYPE_26__ TYPE_10__ ;


typedef int ngx_table_elt_t ;
struct TYPE_38__ {int * data; int handler; } ;
typedef TYPE_9__ ngx_pool_cleanup_t ;
struct TYPE_36__ {int trailers; int headers; } ;
struct TYPE_35__ {int allocated; int tag; TYPE_25__* free; int sendfile; } ;
struct TYPE_34__ {int temporary; int tag; int * start; int * end; int * last; int * pos; } ;
struct TYPE_29__ {scalar_t__ limit; TYPE_12__* connection; int * out; int ** last; int pool; } ;
struct TYPE_26__ {int * send_pool; TYPE_7__ headers_in; TYPE_6__ output; TYPE_5__ buffer; TYPE_4__* conf; scalar_t__ request_sent; TYPE_1__ writer; int read_event_handler; int write_event_handler; } ;
typedef TYPE_10__ ngx_http_upstream_t ;
struct TYPE_27__ {int pool; TYPE_8__* connection; TYPE_3__* request_body; struct TYPE_27__* main; TYPE_10__* upstream; } ;
typedef TYPE_11__ ngx_http_request_t ;
struct TYPE_28__ {int sendfile; TYPE_11__* data; } ;
typedef TYPE_12__ ngx_connection_t ;
struct TYPE_37__ {int log; } ;
struct TYPE_33__ {int buffer_size; } ;
struct TYPE_32__ {TYPE_2__* buf; scalar_t__ temp_file; } ;
struct TYPE_31__ {int tag; int start; int last; int pos; } ;
struct TYPE_30__ {int * next; TYPE_2__* buf; } ;


 int NGX_DEFAULT_POOL_SIZE ;
 int NGX_HTTP_INTERNAL_SERVER_ERROR ;
 int NGX_LOG_DEBUG_HTTP ;
 scalar_t__ NGX_OK ;
 TYPE_25__* ngx_alloc_chain_link (int ) ;
 int * ngx_create_pool (int ,int ) ;
 int ngx_http_multi_upstream_finalize_request (TYPE_12__*,int ) ;
 int ngx_http_multi_upstream_send_pool_cleanup ;
 int ngx_http_upstream_finalize_request (TYPE_11__*,TYPE_10__*,int ) ;
 int ngx_http_upstream_process_header ;
 scalar_t__ ngx_http_upstream_reinit (TYPE_11__*,TYPE_10__*) ;
 int ngx_http_upstream_send_request (TYPE_11__*,TYPE_10__*,int) ;
 int ngx_http_upstream_send_request_handler ;
 scalar_t__ ngx_list_init (int *,int ,int,int) ;
 int ngx_log_debug2 (int ,int ,int ,char*,TYPE_12__*,TYPE_11__*) ;
 int * ngx_palloc (int ,int) ;
 TYPE_9__* ngx_pool_cleanup_add (int ,int ) ;

void
ngx_http_multi_upstream_init_request(ngx_connection_t *pc, ngx_http_request_t *r)
{
    ngx_http_upstream_t *u;
    ngx_http_request_t *fake_r;
    ngx_pool_cleanup_t *cln;

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "multi: http upstream init request: %p, %p", pc, r);

    u = r->upstream;
    fake_r = pc->data;

    u->write_event_handler = ngx_http_upstream_send_request_handler;
    u->read_event_handler = ngx_http_upstream_process_header;

    u->output.sendfile = pc->sendfile;


    u->writer.pool = fake_r->pool;
    u->writer.out = ((void*)0);
    u->writer.last = &u->writer.out;
    u->writer.connection = pc;
    u->writer.limit = 0;

    if (u->request_sent) {
        if (ngx_http_upstream_reinit(r, u) != NGX_OK) {
            ngx_http_upstream_finalize_request(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }
    }

    if (r->request_body
        && r->request_body->buf
        && r->request_body->temp_file
        && r == r->main)
    {





        u->output.free = ngx_alloc_chain_link(r->pool);
        if (u->output.free == ((void*)0)) {
            ngx_http_upstream_finalize_request(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }

        u->output.free->buf = r->request_body->buf;
        u->output.free->next = ((void*)0);
        u->output.allocated = 1;

        r->request_body->buf->pos = r->request_body->buf->start;
        r->request_body->buf->last = r->request_body->buf->start;
        r->request_body->buf->tag = u->output.tag;
    }

    u->request_sent = 0;

    if (u->buffer.start == ((void*)0)) {
        u->buffer.start = ngx_palloc(r->pool, u->conf->buffer_size);
        if (u->buffer.start == ((void*)0)) {
            ngx_http_upstream_finalize_request(r, u,
                                               NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }

        u->buffer.pos = u->buffer.start;
        u->buffer.last = u->buffer.start;
        u->buffer.end = u->buffer.start + u->conf->buffer_size;
        u->buffer.temporary = 1;

        u->buffer.tag = u->output.tag;

        if (ngx_list_init(&u->headers_in.headers, r->pool, 8,
                          sizeof(ngx_table_elt_t))
            != NGX_OK)
        {
            ngx_http_multi_upstream_finalize_request(pc,
                                                     NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }

        if (ngx_list_init(&u->headers_in.trailers, r->pool, 2,
                          sizeof(ngx_table_elt_t))
            != NGX_OK)
        {
            ngx_http_multi_upstream_finalize_request(pc,
                                                     NGX_HTTP_INTERNAL_SERVER_ERROR);
            return;
        }
    }

    if (u->send_pool == ((void*)0)) {
        u->send_pool = ngx_create_pool(NGX_DEFAULT_POOL_SIZE, r->connection->log);
        if (u->send_pool == ((void*)0)) {
            return;
        }

        cln = ngx_pool_cleanup_add(r->pool, 0);
        if (cln == ((void*)0)) {
            return;
        }

        cln->handler = ngx_http_multi_upstream_send_pool_cleanup;
        cln->data = u->send_pool;

    }

    ngx_http_upstream_send_request(r, u, 1);
}
