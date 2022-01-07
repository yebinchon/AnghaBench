
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int call_ret_hook (int *) ;
 int g_csharp_wrapper_caller (int *,int ,int ) ;
 int luaL_error (int *,char*) ;
 int lua_error (int *) ;
 scalar_t__ lua_gethook (int *) ;
 int lua_gettop (int *) ;
 int lua_pushboolean (int *,int ) ;
 int lua_replace (int *,int ) ;
 scalar_t__ lua_toboolean (int *,int ) ;
 int lua_upvalueindex (int) ;
 int xlua_tointeger (int *,int ) ;

__attribute__((used)) static int csharp_function_wrapper_wrapper(lua_State *L) {
    int ret = 0;

 if (g_csharp_wrapper_caller == ((void*)0)) {
  return luaL_error(L, "g_csharp_wrapper_caller not set");
 }

 ret = g_csharp_wrapper_caller(L, xlua_tointeger(L, lua_upvalueindex(1)), lua_gettop(L));

    if (lua_toboolean(L, lua_upvalueindex(2)))
    {
        lua_pushboolean(L, 0);
        lua_replace(L, lua_upvalueindex(2));
        return lua_error(L);
    }

 if (lua_gethook(L)) {
  call_ret_hook(L);
 }

    return ret;
}
