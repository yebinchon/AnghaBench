
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_queue_t ;
typedef int ngx_pool_t ;
struct TYPE_4__ {int bucket_count; int max_cached; int free_peer; int get_peer; int * free; int * cache; } ;
typedef TYPE_1__ ngx_http_connection_pool_t ;
struct TYPE_5__ {int queue; } ;
typedef TYPE_2__ ngx_http_connection_pool_elt_t ;


 int ngx_http_connection_pool_free ;
 int ngx_http_connection_pool_get ;
 void* ngx_pcalloc (int *,int) ;
 int ngx_queue_init (int *) ;
 int ngx_queue_insert_head (int *,int *) ;

ngx_http_connection_pool_t *
ngx_http_connection_pool_init(ngx_pool_t *pool, ngx_uint_t max_cached,
    ngx_uint_t bucket_count)
{
    ngx_uint_t j, k;
    ngx_http_connection_pool_t *conn_pool;
    ngx_http_connection_pool_elt_t *cached;

    conn_pool = ngx_pcalloc(pool, sizeof(ngx_http_connection_pool_t));
    if (conn_pool == ((void*)0)) {
        return ((void*)0);
    }

    conn_pool->bucket_count = bucket_count;
    conn_pool->max_cached = max_cached;

    conn_pool->cache = ngx_pcalloc(pool, sizeof(ngx_queue_t) * bucket_count);
    if (conn_pool->cache == ((void*)0)) {
        return ((void*)0);
    }

    conn_pool->free = ngx_pcalloc(pool, sizeof(ngx_queue_t) * bucket_count);
    if (conn_pool->free == ((void*)0)) {
        return ((void*)0);
    }

    for (j = 0; j < bucket_count; j++) {
        ngx_queue_init(&conn_pool->cache[j]);
        ngx_queue_init(&conn_pool->free[j]);
        cached = ngx_pcalloc(pool,
                           sizeof(ngx_http_connection_pool_elt_t) * max_cached);
        if (cached == ((void*)0)) {
            return ((void*)0);
        }

        for (k = 0; k < max_cached; k++) {
            ngx_queue_insert_head(&conn_pool->free[j], &cached[k].queue);
        }
    }

    conn_pool->get_peer = ngx_http_connection_pool_get;
    conn_pool->free_peer = ngx_http_connection_pool_free;
    return conn_pool;
}
