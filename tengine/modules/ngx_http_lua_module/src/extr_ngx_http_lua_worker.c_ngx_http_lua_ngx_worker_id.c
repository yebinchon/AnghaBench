
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;


 scalar_t__ NGX_PROCESS_SINGLE ;
 scalar_t__ NGX_PROCESS_WORKER ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushnil (int *) ;
 scalar_t__ ngx_process ;
 scalar_t__ ngx_worker ;

__attribute__((used)) static int
ngx_http_lua_ngx_worker_id(lua_State *L)
{
    lua_pushnil(L);

    return 1;
}
