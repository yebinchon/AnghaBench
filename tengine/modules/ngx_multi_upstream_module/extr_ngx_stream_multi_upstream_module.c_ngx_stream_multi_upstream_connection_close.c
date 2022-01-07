
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ngx_pool_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {int log; TYPE_1__* ssl; int * pool; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_7__ {int no_wait_shutdown; } ;


 int NGX_LOG_INFO ;
 int NGX_OK ;
 int ngx_close_connection (TYPE_2__*) ;
 int ngx_destroy_pool (int *) ;
 int ngx_log_error (int ,int ,int ,char*,TYPE_2__*) ;
 int ngx_ssl_shutdown (TYPE_2__*) ;

ngx_int_t
ngx_stream_multi_upstream_connection_close(ngx_connection_t *c)
{
    ngx_pool_t *pool = c->pool;
    ngx_log_error(NGX_LOG_INFO, c->log,
            0, "multi: multi connection real close %p", c);

    ngx_close_connection(c);

    if (pool) {
        ngx_destroy_pool(pool);
    }

    return NGX_OK;
}
