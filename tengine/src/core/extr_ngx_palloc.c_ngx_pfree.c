
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int log; TYPE_2__* large; } ;
typedef TYPE_1__ ngx_pool_t ;
struct TYPE_5__ {void* alloc; struct TYPE_5__* next; } ;
typedef TYPE_2__ ngx_pool_large_t ;
typedef int ngx_int_t ;


 int NGX_DECLINED ;
 int NGX_LOG_DEBUG_ALLOC ;
 int NGX_OK ;
 int ngx_free (void*) ;
 int ngx_log_debug1 (int ,int ,int ,char*,void*) ;

ngx_int_t
ngx_pfree(ngx_pool_t *pool, void *p)
{
    ngx_pool_large_t *l;

    for (l = pool->large; l; l = l->next) {
        if (p == l->alloc) {
            ngx_log_debug1(NGX_LOG_DEBUG_ALLOC, pool->log, 0,
                           "free: %p", l->alloc);
            ngx_free(l->alloc);
            l->alloc = ((void*)0);

            return NGX_OK;
        }
    }

    return NGX_DECLINED;
}
