
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int aux_close (int *) ;
 int errno ;
 scalar_t__ ferror (int *) ;
 int luaL_error (int *,char*,...) ;
 int lua_pushvalue (int *,int ) ;
 int lua_settop (int *,int ) ;
 scalar_t__ lua_toboolean (int *,int ) ;
 scalar_t__ lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 int read_line (int *,int *) ;
 int strerror (int ) ;

__attribute__((used)) static int io_readline (lua_State *L) {
  FILE *f = *(FILE **)lua_touserdata(L, lua_upvalueindex(1));
  int sucess;
  if (f == ((void*)0))
    luaL_error(L, "file is already closed");
  sucess = read_line(L, f);
  if (ferror(f))
    return luaL_error(L, "%s", strerror(errno));
  if (sucess) return 1;
  else {
    if (lua_toboolean(L, lua_upvalueindex(2))) {
      lua_settop(L, 0);
      lua_pushvalue(L, lua_upvalueindex(1));
      aux_close(L);
    }
    return 0;
  }
}
