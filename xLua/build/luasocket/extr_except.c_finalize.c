
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_error (int *) ;
 int lua_gettop (int *) ;
 int lua_pcall (int *,int ,int ,int ) ;
 int lua_pushvalue (int *,int ) ;
 int lua_settop (int *,int) ;
 int lua_toboolean (int *,int) ;
 int lua_upvalueindex (int) ;
 int wrap (int *) ;

__attribute__((used)) static int finalize(lua_State *L) {
    if (!lua_toboolean(L, 1)) {
        lua_pushvalue(L, lua_upvalueindex(1));
        lua_pcall(L, 0, 0, 0);
        lua_settop(L, 2);
        wrap(L);
        lua_error(L);
        return 0;
    } else return lua_gettop(L);
}
