
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;
typedef int ngx_http_request_t ;


 int NGX_OK ;
 int ngx_http_sysguard_update_cpuinfo (int *) ;
 int ngx_http_sysguard_update_rt_node (int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_sysguard_log_handler(ngx_http_request_t *r)
{
    ngx_http_sysguard_update_rt_node(r);
    ngx_http_sysguard_update_cpuinfo(r);
    return NGX_OK;
}
