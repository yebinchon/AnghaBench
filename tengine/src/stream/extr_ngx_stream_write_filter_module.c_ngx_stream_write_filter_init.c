
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;
typedef int ngx_conf_t ;


 int NGX_OK ;
 int ngx_stream_top_filter ;
 int ngx_stream_write_filter ;

__attribute__((used)) static ngx_int_t
ngx_stream_write_filter_init(ngx_conf_t *cf)
{
    ngx_stream_top_filter = ngx_stream_write_filter;

    return NGX_OK;
}
