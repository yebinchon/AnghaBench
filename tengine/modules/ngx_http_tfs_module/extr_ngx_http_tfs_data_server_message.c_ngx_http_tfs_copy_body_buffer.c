
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef int ssize_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {int tag; } ;
struct TYPE_10__ {TYPE_2__ output; int free_bufs; TYPE_5__* out_bufs; TYPE_4__* data; } ;
typedef TYPE_3__ ngx_http_tfs_t ;
struct TYPE_11__ {int pool; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_12__ {TYPE_1__* buf; struct TYPE_12__* next; } ;
typedef TYPE_5__ ngx_chain_t ;
struct TYPE_8__ {int flush; int memory; int tag; int * last; int * pos; } ;


 int NGX_ERROR ;
 int NGX_OK ;
 TYPE_5__* ngx_chain_get_free_buf (int ,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_tfs_copy_body_buffer(ngx_http_tfs_t *t, ssize_t bytes, u_char *body)
{
    ngx_http_request_t *r = t->data;

    ngx_chain_t *cl, **ll;

    for (cl = t->out_bufs, ll = &t->out_bufs; cl; cl = cl->next) {
        ll = &cl->next;
    }

    cl = ngx_chain_get_free_buf(r->pool, &t->free_bufs);
    if (cl == ((void*)0)) {
        return NGX_ERROR;
    }

    *ll = cl;

    cl->buf->flush = 1;
    cl->buf->memory = 1;

    cl->buf->pos = body;
    cl->buf->last = body + bytes;
    cl->buf->tag = t->output.tag;

    return NGX_OK;
}
