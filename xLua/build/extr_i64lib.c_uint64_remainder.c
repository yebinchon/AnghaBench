
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int lua_State ;


 int luaL_error (int *,char*) ;
 int lua_pushuint64 (int *,int) ;
 int lua_touint64 (int *,int) ;

__attribute__((used)) static int uint64_remainder(lua_State* L) {
 uint64_t lhs = lua_touint64(L, 1);
 uint64_t rhs = lua_touint64(L, 2);
 if (rhs == 0) {
        return luaL_error(L, "div by zero");
    }
 lua_pushuint64(L, lhs % rhs);
 return 1;
}
