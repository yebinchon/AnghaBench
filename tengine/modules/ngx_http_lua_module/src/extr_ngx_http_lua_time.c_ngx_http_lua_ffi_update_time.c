
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ngx_time_update () ;

void
ngx_http_lua_ffi_update_time(void)
{
    ngx_time_update();
}
