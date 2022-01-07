
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int lua_State ;


 int lua_pushinteger (int *,int) ;
 scalar_t__ lua_touint64 (int *,int) ;

__attribute__((used)) static int uint64_compare(lua_State* L) {
 uint64_t lhs = lua_touint64(L, 1);
 uint64_t rhs = lua_touint64(L, 2);
 lua_pushinteger(L, lhs == rhs ? 0 : (lhs < rhs ? -1 : 1));
 return 1;
}
