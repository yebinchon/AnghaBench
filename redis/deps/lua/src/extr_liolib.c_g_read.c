
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 scalar_t__ LUA_MINSTACK ;
 scalar_t__ LUA_TNUMBER ;
 int clearerr (int *) ;
 scalar_t__ ferror (int *) ;
 int luaL_argcheck (int *,int ,int,char*) ;
 int luaL_argerror (int *,int,char*) ;
 int luaL_checkstack (int *,scalar_t__,char*) ;
 int lua_gettop (int *) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_tointeger (int *,int) ;
 char* lua_tostring (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int pushresult (int *,int ,int *) ;
 int read_chars (int *,int *,size_t) ;
 int read_line (int *,int *) ;
 int read_number (int *,int *) ;
 int test_eof (int *,int *) ;

__attribute__((used)) static int g_read (lua_State *L, FILE *f, int first) {
  int nargs = lua_gettop(L) - 1;
  int success;
  int n;
  clearerr(f);
  if (nargs == 0) {
    success = read_line(L, f);
    n = first+1;
  }
  else {
    luaL_checkstack(L, nargs+LUA_MINSTACK, "too many arguments");
    success = 1;
    for (n = first; nargs-- && success; n++) {
      if (lua_type(L, n) == LUA_TNUMBER) {
        size_t l = (size_t)lua_tointeger(L, n);
        success = (l == 0) ? test_eof(L, f) : read_chars(L, f, l);
      }
      else {
        const char *p = lua_tostring(L, n);
        luaL_argcheck(L, p && p[0] == '*', n, "invalid option");
        switch (p[1]) {
          case 'n':
            success = read_number(L, f);
            break;
          case 'l':
            success = read_line(L, f);
            break;
          case 'a':
            read_chars(L, f, ~((size_t)0));
            success = 1;
            break;
          default:
            return luaL_argerror(L, n, "invalid format");
        }
      }
    }
  }
  if (ferror(f))
    return pushresult(L, 0, ((void*)0));
  if (!success) {
    lua_pop(L, 1);
    lua_pushnil(L);
  }
  return n - first;
}
