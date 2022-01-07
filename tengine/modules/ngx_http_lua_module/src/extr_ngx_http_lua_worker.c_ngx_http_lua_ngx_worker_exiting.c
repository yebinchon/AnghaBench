
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushboolean (int *,int ) ;
 int ngx_exiting ;

__attribute__((used)) static int
ngx_http_lua_ngx_worker_exiting(lua_State *L)
{
    lua_pushboolean(L, ngx_exiting);
    return 1;
}
