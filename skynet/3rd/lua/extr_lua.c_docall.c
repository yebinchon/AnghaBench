
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int SIGINT ;
 int SIG_DFL ;
 int * globalL ;
 int laction ;
 int lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 int lua_pcall (int *,int,int,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_remove (int *,int) ;
 int msghandler ;
 int signal (int ,int ) ;

__attribute__((used)) static int docall (lua_State *L, int narg, int nres) {
  int status;
  int base = lua_gettop(L) - narg;
  lua_pushcfunction(L, msghandler);
  lua_insert(L, base);
  globalL = L;
  signal(SIGINT, laction);
  status = lua_pcall(L, narg, nres, base);
  signal(SIGINT, SIG_DFL);
  lua_remove(L, base);
  return status;
}
