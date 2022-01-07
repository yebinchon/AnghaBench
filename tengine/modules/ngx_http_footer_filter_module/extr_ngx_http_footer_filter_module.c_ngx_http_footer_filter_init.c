
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;
typedef int ngx_conf_t ;


 int NGX_OK ;
 int ngx_http_footer_body_filter ;
 int ngx_http_footer_header_filter ;
 int ngx_http_next_body_filter ;
 int ngx_http_next_header_filter ;
 int ngx_http_top_body_filter ;
 int ngx_http_top_header_filter ;

__attribute__((used)) static ngx_int_t
ngx_http_footer_filter_init(ngx_conf_t *cf)
{
    ngx_http_next_body_filter = ngx_http_top_body_filter;
    ngx_http_top_body_filter = ngx_http_footer_body_filter;

    ngx_http_next_header_filter = ngx_http_top_header_filter;
    ngx_http_top_header_filter = ngx_http_footer_header_filter;

    return NGX_OK;
}
