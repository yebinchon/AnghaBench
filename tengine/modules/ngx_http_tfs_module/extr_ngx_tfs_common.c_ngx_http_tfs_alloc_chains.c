
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
typedef int ngx_pool_t ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ ngx_chain_t ;


 TYPE_1__* ngx_alloc_chain_link (int *) ;

ngx_chain_t *
ngx_http_tfs_alloc_chains(ngx_pool_t *pool, size_t count)
{
    ngx_uint_t i;
    ngx_chain_t *cl, **ll;

    ll = &cl;

    for (i = 0; i < count; i++) {
        *ll = ngx_alloc_chain_link(pool);
        if (*ll == ((void*)0)) {
            return ((void*)0);
        }

        ll = &(*ll)->next;
    }

    (*ll) = ((void*)0);

    return cl;
}
