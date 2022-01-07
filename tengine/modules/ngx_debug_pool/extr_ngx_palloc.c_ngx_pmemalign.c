
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* stat; TYPE_3__* large; int log; } ;
typedef TYPE_2__ ngx_pool_t ;
struct TYPE_9__ {size_t size; struct TYPE_9__* next; void* alloc; } ;
typedef TYPE_3__ ngx_pool_large_t ;
struct TYPE_7__ {size_t size; } ;


 int ngx_free (void*) ;
 void* ngx_memalign (size_t,size_t,int ) ;
 TYPE_3__* ngx_palloc_small (TYPE_2__*,int,int) ;

void *
ngx_pmemalign(ngx_pool_t *pool, size_t size, size_t alignment)
{
    void *p;
    ngx_pool_large_t *large;

    p = ngx_memalign(alignment, size, pool->log);
    if (p == ((void*)0)) {
        return ((void*)0);
    }

    large = ngx_palloc_small(pool, sizeof(ngx_pool_large_t), 1);
    if (large == ((void*)0)) {
        ngx_free(p);
        return ((void*)0);
    }

    large->alloc = p;
    large->next = pool->large;
    pool->large = large;






    return p;
}
