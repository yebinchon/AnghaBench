
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int (* lua_CFunction ) (int *) ;


 int call_ret_hook (int *) ;
 int lua_error (int *) ;
 scalar_t__ lua_gethook (int *) ;
 int lua_pushboolean (int *,int ) ;
 int lua_replace (int *,int ) ;
 scalar_t__ lua_toboolean (int *,int ) ;
 int lua_tocfunction (int *,int ) ;
 int lua_upvalueindex (int) ;

__attribute__((used)) static int csharp_function_wrap(lua_State *L) {
 lua_CFunction fn = (lua_CFunction)lua_tocfunction(L, lua_upvalueindex(1));
    int ret = fn(L);

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
