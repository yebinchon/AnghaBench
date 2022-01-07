
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {scalar_t__ failed; int * next; int * end; int * last; } ;
struct TYPE_6__ {size_t max; int * log; int * cleanup; int * large; int * chain; struct TYPE_6__* current; TYPE_1__ d; } ;
typedef TYPE_2__ ngx_pool_t ;
typedef int ngx_log_t ;


 size_t NGX_MAX_ALLOC_FROM_POOL ;
 int NGX_POOL_ALIGNMENT ;
 TYPE_2__* ngx_memalign (int ,size_t,int *) ;

ngx_pool_t *
ngx_create_pool(size_t size, ngx_log_t *log)
{
    ngx_pool_t *p;

    p = ngx_memalign(NGX_POOL_ALIGNMENT, size, log);
    if (p == ((void*)0)) {
        return ((void*)0);
    }

    p->d.last = (u_char *) p + sizeof(ngx_pool_t);
    p->d.end = (u_char *) p + size;
    p->d.next = ((void*)0);
    p->d.failed = 0;

    size = size - sizeof(ngx_pool_t);
    p->max = (size < NGX_MAX_ALLOC_FROM_POOL) ? size : NGX_MAX_ALLOC_FROM_POOL;

    p->current = p;
    p->chain = ((void*)0);
    p->large = ((void*)0);
    p->cleanup = ((void*)0);
    p->log = log;

    return p;
}
