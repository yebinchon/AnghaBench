
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_pool_t ;
struct TYPE_6__ {struct TYPE_6__* next; TYPE_4__* buf; } ;
typedef TYPE_1__ ngx_chain_t ;
struct TYPE_7__ {scalar_t__ start; scalar_t__ end; } ;


 TYPE_1__* ngx_alloc_chain_link (int *) ;
 TYPE_4__* ngx_create_temp_buf (int *,size_t) ;

ngx_chain_t *
ngx_http_tfs_chain_get_free_buf(ngx_pool_t *p,
    ngx_chain_t **free, size_t size)
{
    ngx_chain_t *cl;

    if (*free) {
        cl = *free;
        if ((size_t) (cl->buf->end - cl->buf->start) >= size) {
            *free = cl->next;
            cl->next = ((void*)0);
            return cl;
        }
    }

    cl = ngx_alloc_chain_link(p);
    if (cl == ((void*)0)) {
        return ((void*)0);
    }

    cl->buf = ngx_create_temp_buf(p, size);
    if (cl->buf == ((void*)0)) {
        return ((void*)0);
    }

    cl->next = ((void*)0);

    return cl;
}
