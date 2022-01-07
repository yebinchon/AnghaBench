
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_str_t ;
typedef int ngx_int_t ;
typedef int ngx_http_request_t ;
typedef int ngx_http_lua_header_val_t ;


 int ngx_http_set_header_helper (int *,int *,int *,int *) ;

__attribute__((used)) static ngx_int_t
ngx_http_set_header(ngx_http_request_t *r, ngx_http_lua_header_val_t *hv,
    ngx_str_t *value)
{
    return ngx_http_set_header_helper(r, hv, value, ((void*)0));
}
