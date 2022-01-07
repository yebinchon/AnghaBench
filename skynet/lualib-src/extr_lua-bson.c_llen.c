
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushinteger (int *,size_t) ;
 size_t lua_rawlen (int *,int) ;

__attribute__((used)) static int
llen(lua_State *L) {
 size_t sz = lua_rawlen(L, 1);
 lua_pushinteger(L, sz);
 return 1;
}
