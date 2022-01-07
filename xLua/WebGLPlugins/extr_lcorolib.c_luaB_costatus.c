
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Debug ;




 int * getco (int *) ;
 int lua_getstack (int *,int ,int *) ;
 int lua_gettop (int *) ;
 int lua_pushliteral (int *,char*) ;
 int lua_status (int *) ;

__attribute__((used)) static int luaB_costatus (lua_State *L) {
  lua_State *co = getco(L);
  if (L == co) lua_pushliteral(L, "running");
  else {
    switch (lua_status(co)) {
      case 128:
        lua_pushliteral(L, "suspended");
        break;
      case 129: {
        lua_Debug ar;
        if (lua_getstack(co, 0, &ar) > 0)
          lua_pushliteral(L, "normal");
        else if (lua_gettop(co) == 0)
            lua_pushliteral(L, "dead");
        else
          lua_pushliteral(L, "suspended");
        break;
      }
      default:
        lua_pushliteral(L, "dead");
        break;
    }
  }
  return 1;
}
