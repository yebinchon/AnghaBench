
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int LUA_ENVIRONINDEX ;
 int fileerror (int *,int,char const*) ;
 int * fopen (char const*,char const*) ;
 int lua_isnoneornil (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawgeti (int *,int ,int) ;
 int lua_rawseti (int *,int ,int) ;
 char* lua_tostring (int *,int) ;
 int ** newfile (int *) ;
 int tofile (int *) ;

__attribute__((used)) static int g_iofile (lua_State *L, int f, const char *mode) {
  if (!lua_isnoneornil(L, 1)) {
    const char *filename = lua_tostring(L, 1);
    if (filename) {
      FILE **pf = newfile(L);
      *pf = fopen(filename, mode);
      if (*pf == ((void*)0))
        fileerror(L, 1, filename);
    }
    else {
      tofile(L);
      lua_pushvalue(L, 1);
    }
    lua_rawseti(L, LUA_ENVIRONINDEX, f);
  }

  lua_rawgeti(L, LUA_ENVIRONINDEX, f);
  return 1;
}
