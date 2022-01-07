
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef char lua_Integer ;
typedef int luaL_Buffer ;


 int luaL_argcheck (int *,int,int,char*) ;
 char* luaL_buffinitsize (int *,int *,int) ;
 char luaL_checkinteger (int *,int) ;
 int luaL_pushresultsize (int *,int) ;
 int lua_gettop (int *) ;
 char uchar (char) ;

__attribute__((used)) static int str_char (lua_State *L) {
  int n = lua_gettop(L);
  int i;
  luaL_Buffer b;
  char *p = luaL_buffinitsize(L, &b, n);
  for (i=1; i<=n; i++) {
    lua_Integer c = luaL_checkinteger(L, i);
    luaL_argcheck(L, uchar(c) == c, i, "value out of range");
    p[i - 1] = uchar(c);
  }
  luaL_pushresultsize(&b, n);
  return 1;
}
