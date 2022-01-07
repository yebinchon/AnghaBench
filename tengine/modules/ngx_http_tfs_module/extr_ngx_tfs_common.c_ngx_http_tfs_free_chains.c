
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; TYPE_1__* buf; } ;
typedef TYPE_2__ ngx_chain_t ;
struct TYPE_5__ {scalar_t__ file_pos; int start; int last; int pos; } ;



void
ngx_http_tfs_free_chains(ngx_chain_t **free, ngx_chain_t **out)
{
    ngx_chain_t *cl;

    cl = *out;

    while(cl) {
        cl->buf->pos = cl->buf->start;
        cl->buf->last = cl->buf->start;
        cl->buf->file_pos = 0;

        cl->next = *free;
        *free = cl;
    }
}
