
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_MULTRET ;
 int LUA_OK ;
 int docall (int *,int ,int ) ;
 int l_print (int *) ;
 int loadline (int *) ;
 int lua_settop (int *,int ) ;
 int lua_writeline () ;
 char const* progname ;
 int report (int *,int) ;

__attribute__((used)) static void doREPL (lua_State *L) {
  int status;
  const char *oldprogname = progname;
  progname = ((void*)0);
  while ((status = loadline(L)) != -1) {
    if (status == LUA_OK)
      status = docall(L, 0, LUA_MULTRET);
    if (status == LUA_OK) l_print(L);
    else report(L, status);
  }
  lua_settop(L, 0);
  lua_writeline();
  progname = oldprogname;
}
