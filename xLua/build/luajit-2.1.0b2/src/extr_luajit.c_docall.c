
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_GCCOLLECT ;
 int LUA_MULTRET ;
 int SIGINT ;
 int SIG_DFL ;
 int laction ;
 int lua_gc (int *,int ,int ) ;
 int lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 int lua_pcall (int *,int,int ,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_remove (int *,int) ;
 int signal (int ,int ) ;
 int traceback ;

__attribute__((used)) static int docall(lua_State *L, int narg, int clear)
{
  int status;
  int base = lua_gettop(L) - narg;
  lua_pushcfunction(L, traceback);
  lua_insert(L, base);

  signal(SIGINT, laction);

  status = lua_pcall(L, narg, (clear ? 0 : LUA_MULTRET), base);

  signal(SIGINT, SIG_DFL);

  lua_remove(L, base);

  if (status != 0) lua_gc(L, LUA_GCCOLLECT, 0);
  return status;
}
