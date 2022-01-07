
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* chain; } ;
typedef TYPE_1__ ngx_pool_t ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef TYPE_2__ ngx_chain_t ;


 TYPE_2__* ngx_palloc (TYPE_1__*,int) ;

ngx_chain_t *
ngx_alloc_chain_link(ngx_pool_t *pool)
{
    ngx_chain_t *cl;

    cl = pool->chain;

    if (cl) {
        pool->chain = cl->next;
        return cl;
    }

    cl = ngx_palloc(pool, sizeof(ngx_chain_t));
    if (cl == ((void*)0)) {
        return ((void*)0);
    }

    return cl;
}
