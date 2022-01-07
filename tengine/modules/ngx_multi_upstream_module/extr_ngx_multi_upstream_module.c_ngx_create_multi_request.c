
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_pool_t ;
struct TYPE_6__ {int * pool; void* data; } ;
typedef TYPE_1__ ngx_multi_request_t ;
struct TYPE_7__ {int log; } ;
typedef TYPE_2__ ngx_connection_t ;


 int * ngx_create_pool (int,int ) ;
 int ngx_destroy_pool (int *) ;
 TYPE_1__* ngx_pcalloc (int *,int) ;

ngx_multi_request_t*
ngx_create_multi_request(ngx_connection_t *c, void *data)
{
    ngx_multi_request_t *multi_r;
    ngx_pool_t *pool;

    pool = ngx_create_pool(4096, c->log);
    if (pool == ((void*)0)) {
        return ((void*)0);
    }

    multi_r = ngx_pcalloc(pool, sizeof(ngx_multi_request_t));
    if (multi_r == ((void*)0)) {
        ngx_destroy_pool(pool);
        return ((void*)0);
    }

    multi_r->data = data;
    multi_r->pool = pool;

    return multi_r;
}
