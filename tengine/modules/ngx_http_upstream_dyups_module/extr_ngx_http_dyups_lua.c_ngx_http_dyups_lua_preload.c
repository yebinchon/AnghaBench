
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ngx_int_t ;
typedef int ngx_conf_t ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int ngx_http_dyups_lua_register ;
 scalar_t__ ngx_http_lua_add_package_preload (int *,char*,int ) ;

ngx_int_t
ngx_http_dyups_lua_preload(ngx_conf_t *cf)
{
    if (ngx_http_lua_add_package_preload(cf, "ngx.dyups",
                                         ngx_http_dyups_lua_register)
        != NGX_OK)
    {
        return NGX_ERROR;
    }

    return NGX_OK;
}
