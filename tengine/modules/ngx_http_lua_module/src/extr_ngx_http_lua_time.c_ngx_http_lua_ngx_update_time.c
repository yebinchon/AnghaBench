
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int ngx_time_update () ;

__attribute__((used)) static int
ngx_http_lua_ngx_update_time(lua_State *L)
{
    ngx_time_update();
    return 0;
}
