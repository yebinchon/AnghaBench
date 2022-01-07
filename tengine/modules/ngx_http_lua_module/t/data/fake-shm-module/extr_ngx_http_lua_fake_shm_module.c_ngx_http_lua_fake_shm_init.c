
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;
typedef int ngx_conf_t ;


 int NGX_OK ;
 int ngx_http_lua_add_package_preload (int *,char*,int ) ;
 int ngx_http_lua_fake_shm_preload ;

__attribute__((used)) static ngx_int_t
ngx_http_lua_fake_shm_init(ngx_conf_t *cf)
{
    ngx_http_lua_add_package_preload(cf, "fake_shm_zones",
                                     ngx_http_lua_fake_shm_preload);
    return NGX_OK;
}
