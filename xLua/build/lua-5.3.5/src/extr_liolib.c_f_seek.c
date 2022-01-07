
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ lua_Integer ;
typedef scalar_t__ l_seeknum ;
typedef int FILE ;





 int l_fseek (int *,scalar_t__,int const) ;
 scalar_t__ l_ftell (int *) ;
 int luaL_argcheck (int *,int,int,char*) ;
 int luaL_checkoption (int *,int,char*,char const* const*) ;
 int luaL_fileresult (int *,int ,int *) ;
 scalar_t__ luaL_optinteger (int *,int,int ) ;
 int lua_pushinteger (int *,scalar_t__) ;
 int * tofile (int *) ;

__attribute__((used)) static int f_seek (lua_State *L) {
  static const int mode[] = {128, 130, 129};
  static const char *const modenames[] = {"set", "cur", "end", ((void*)0)};
  FILE *f = tofile(L);
  int op = luaL_checkoption(L, 2, "cur", modenames);
  lua_Integer p3 = luaL_optinteger(L, 3, 0);
  l_seeknum offset = (l_seeknum)p3;
  luaL_argcheck(L, (lua_Integer)offset == p3, 3,
                  "not an integer in proper range");
  op = l_fseek(f, offset, mode[op]);
  if (op)
    return luaL_fileresult(L, 0, ((void*)0));
  else {
    lua_pushinteger(L, (lua_Integer)l_ftell(f));
    return 1;
  }
}
