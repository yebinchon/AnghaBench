
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_pool_t ;
typedef int ngx_log_t ;
typedef int ngx_int_t ;
typedef int ngx_http_tfs_tair_instance_t ;
typedef int ngx_http_tair_mget_handler_pt ;
typedef int ngx_array_t ;


 int NGX_ERROR ;

ngx_int_t ngx_http_tfs_tair_mget_helper(ngx_http_tfs_tair_instance_t *instance,
    ngx_pool_t *pool, ngx_log_t *log,
    ngx_array_t *kvs, ngx_http_tair_mget_handler_pt callback, void *data)
{
    return NGX_ERROR;
}
