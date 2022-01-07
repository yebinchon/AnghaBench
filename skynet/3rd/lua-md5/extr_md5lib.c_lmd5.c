
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* luaL_checklstring (int *,int,size_t*) ;
 int lua_pushlstring (int *,char*,long) ;
 int md5 (char const*,size_t,char*) ;

__attribute__((used)) static int lmd5 (lua_State *L) {
  char buff[16];
  size_t l;
  const char *message = luaL_checklstring(L, 1, &l);
  md5(message, l, buff);
  lua_pushlstring(L, buff, 16L);
  return 1;
}
