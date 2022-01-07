
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_pool_t ;


 int ngx_destroy_pool (int *) ;

void
ngx_http_multi_upstream_send_pool_cleanup(void *data)
{
    ngx_pool_t *pool = data;

    ngx_destroy_pool(pool);
}
