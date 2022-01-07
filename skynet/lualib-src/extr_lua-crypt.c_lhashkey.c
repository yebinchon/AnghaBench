
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int Hash (char const*,int,int *) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int lua_pushlstring (int *,char const*,int) ;

__attribute__((used)) static int
lhashkey(lua_State *L) {
 size_t sz = 0;
 const char * key = luaL_checklstring(L, 1, &sz);
 uint8_t realkey[8];
 Hash(key,(int)sz,realkey);
 lua_pushlstring(L, (const char *)realkey, 8);
 return 1;
}
