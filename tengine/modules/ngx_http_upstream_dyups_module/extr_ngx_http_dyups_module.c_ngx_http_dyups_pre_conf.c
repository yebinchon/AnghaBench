
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;
typedef int ngx_conf_t ;


 int NGX_OK ;
 int ngx_dyups_add_upstream_filter ;
 int ngx_dyups_add_upstream_top_filter ;
 int ngx_dyups_del_upstream_filter ;
 int ngx_dyups_del_upstream_top_filter ;

__attribute__((used)) static ngx_int_t
ngx_http_dyups_pre_conf(ngx_conf_t *cf)
{
    ngx_dyups_add_upstream_top_filter = ngx_dyups_add_upstream_filter;
    ngx_dyups_del_upstream_top_filter = ngx_dyups_del_upstream_filter;

    return NGX_OK;
}
