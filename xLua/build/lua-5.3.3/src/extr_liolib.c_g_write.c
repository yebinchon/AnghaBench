
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 char* LUA_INTEGER_FMT ;
 char* LUA_NUMBER_FMT ;
 scalar_t__ LUA_TNUMBER ;
 int fprintf (int *,char*,int ) ;
 size_t fwrite (char const*,int,size_t,int *) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_fileresult (int *,int,int *) ;
 int lua_gettop (int *) ;
 scalar_t__ lua_isinteger (int *,int) ;
 int lua_tointeger (int *,int) ;
 int lua_tonumber (int *,int) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static int g_write (lua_State *L, FILE *f, int arg) {
  int nargs = lua_gettop(L) - arg;
  int status = 1;
  for (; nargs--; arg++) {
    if (lua_type(L, arg) == LUA_TNUMBER) {

      int len = lua_isinteger(L, arg)
                ? fprintf(f, LUA_INTEGER_FMT, lua_tointeger(L, arg))
                : fprintf(f, LUA_NUMBER_FMT, lua_tonumber(L, arg));
      status = status && (len > 0);
    }
    else {
      size_t l;
      const char *s = luaL_checklstring(L, arg, &l);
      status = status && (fwrite(s, sizeof(char), l, f) == l);
    }
  }
  if (status) return 1;
  else return luaL_fileresult(L, status, ((void*)0));
}
