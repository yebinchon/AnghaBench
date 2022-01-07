
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int ngx_int_t ;
struct TYPE_16__ {int start; int last; int pos; } ;
struct TYPE_15__ {int * busy; int * in; TYPE_2__* buf; TYPE_11__* free; } ;
struct TYPE_17__ {int header_size; int write_event_handler; int parse_state; TYPE_4__ header_buffer; TYPE_3__ output; TYPE_7__* request_bufs; scalar_t__ request_sent; } ;
typedef TYPE_5__ ngx_http_tfs_t ;
typedef int ngx_http_tfs_header_t ;
struct TYPE_18__ {int pool; struct TYPE_18__* main; TYPE_1__* request_body; } ;
typedef TYPE_6__ ngx_http_request_t ;
struct TYPE_19__ {struct TYPE_19__* next; } ;
typedef TYPE_7__ ngx_chain_t ;
struct TYPE_14__ {int start; int last; int pos; } ;
struct TYPE_13__ {scalar_t__ temp_file; } ;
struct TYPE_12__ {int * next; TYPE_2__* buf; } ;


 int NGX_ERROR ;
 int NGX_HTTP_TFS_HEADER ;
 int NGX_OK ;
 TYPE_11__* ngx_alloc_chain_link (int ) ;
 int ngx_free_chain (int ,TYPE_7__*) ;
 int ngx_http_tfs_send_handler ;

ngx_int_t
ngx_http_tfs_reinit(ngx_http_request_t *r, ngx_http_tfs_t *t)
{
    ngx_chain_t *cl, *cl_next;

    t->request_sent = 0;

    for (cl = t->request_bufs; cl; cl = cl_next) {
        cl_next = cl->next;
        ngx_free_chain(r->pool, cl);
    }


    if (r->request_body && r->request_body->temp_file
        && r != r->main && t->output.buf)
    {
        t->output.free = ngx_alloc_chain_link(r->pool);
        if (t->output.free == ((void*)0)) {
            return NGX_ERROR;
        }

        t->output.free->buf = t->output.buf;
        t->output.free->next = ((void*)0);

        t->output.buf->pos = t->output.buf->start;
        t->output.buf->last = t->output.buf->start;
    }

    t->output.buf = ((void*)0);
    t->output.in = ((void*)0);
    t->output.busy = ((void*)0);

    t->header_buffer.pos = t->header_buffer.start;
    t->header_buffer.last = t->header_buffer.start;

    t->parse_state = NGX_HTTP_TFS_HEADER;
    t->header_size = sizeof(ngx_http_tfs_header_t);
    t->write_event_handler = ngx_http_tfs_send_handler;

    return NGX_OK;
}
