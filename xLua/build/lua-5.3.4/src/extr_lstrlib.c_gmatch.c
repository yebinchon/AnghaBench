
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {char const* src; char const* p; int * lastmatch; int ms; } ;
typedef TYPE_1__ GMatchState ;


 int gmatch_aux ;
 char* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_pushcclosure (int *,int ,int) ;
 int lua_settop (int *,int) ;
 int prepstate (int *,int *,char const*,size_t,char const*,size_t) ;

__attribute__((used)) static int gmatch (lua_State *L) {
  size_t ls, lp;
  const char *s = luaL_checklstring(L, 1, &ls);
  const char *p = luaL_checklstring(L, 2, &lp);
  GMatchState *gm;
  lua_settop(L, 2);
  gm = (GMatchState *)lua_newuserdata(L, sizeof(GMatchState));
  prepstate(&gm->ms, L, s, ls, p, lp);
  gm->src = s; gm->p = p; gm->lastmatch = ((void*)0);
  lua_pushcclosure(L, gmatch_aux, 3);
  return 1;
}
