
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;
typedef int ngx_cycle_t ;


 int NGX_OK ;

__attribute__((used)) static ngx_int_t
ngx_http_v2_module_init(ngx_cycle_t *cycle)
{
    return NGX_OK;
}
