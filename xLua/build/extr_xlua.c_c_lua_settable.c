
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_settable (int *,int) ;

__attribute__((used)) static int c_lua_settable(lua_State* L) {
    lua_settable(L, 1);
    return 0;
}
