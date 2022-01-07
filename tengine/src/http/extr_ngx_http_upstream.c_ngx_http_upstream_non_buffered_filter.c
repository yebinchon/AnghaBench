
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {int tag; } ;
struct TYPE_13__ {int last; } ;
struct TYPE_10__ {int length; TYPE_2__ output; TYPE_6__ buffer; int free_bufs; TYPE_5__* out_bufs; } ;
typedef TYPE_3__ ngx_http_upstream_t ;
struct TYPE_11__ {int pool; TYPE_3__* upstream; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_12__ {TYPE_1__* buf; struct TYPE_12__* next; } ;
typedef TYPE_5__ ngx_chain_t ;
typedef TYPE_6__ ngx_buf_t ;
struct TYPE_8__ {int flush; int memory; int tag; int last; int pos; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_5__* ngx_chain_get_free_buf (int ,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_upstream_non_buffered_filter(void *data, ssize_t bytes)
{
    ngx_http_request_t *r = data;

    ngx_buf_t *b;
    ngx_chain_t *cl, **ll;
    ngx_http_upstream_t *u;

    u = r->upstream;

    for (cl = u->out_bufs, ll = &u->out_bufs; cl; cl = cl->next) {
        ll = &cl->next;
    }

    cl = ngx_chain_get_free_buf(r->pool, &u->free_bufs);
    if (cl == ((void*)0)) {
        return NGX_ERROR;
    }

    *ll = cl;

    cl->buf->flush = 1;
    cl->buf->memory = 1;

    b = &u->buffer;

    cl->buf->pos = b->last;
    b->last += bytes;
    cl->buf->last = b->last;
    cl->buf->tag = u->output.tag;

    if (u->length == -1) {
        return NGX_OK;
    }

    u->length -= bytes;

    return NGX_OK;
}
