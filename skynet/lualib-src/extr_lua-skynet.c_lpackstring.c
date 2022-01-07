
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushlstring (int *,char*,int) ;
 int lua_tointeger (int *,int) ;
 scalar_t__ lua_touserdata (int *,int) ;
 int luaseri_pack (int *) ;
 int skynet_free (char*) ;

__attribute__((used)) static int
lpackstring(lua_State *L) {
 luaseri_pack(L);
 char * str = (char *)lua_touserdata(L, -2);
 int sz = lua_tointeger(L, -1);
 lua_pushlstring(L, str, sz);
 skynet_free(str);
 return 1;
}
