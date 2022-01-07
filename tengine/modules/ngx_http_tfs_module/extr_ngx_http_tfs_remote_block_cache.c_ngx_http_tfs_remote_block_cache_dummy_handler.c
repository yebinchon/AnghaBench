
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_pool_t ;
typedef int ngx_int_t ;


 int ngx_destroy_pool (int *) ;

__attribute__((used)) static void
ngx_http_tfs_remote_block_cache_dummy_handler(ngx_int_t rc, void *data)
{
    ngx_destroy_pool((ngx_pool_t *)data);
}
