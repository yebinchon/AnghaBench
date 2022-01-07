
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int memerrmsg; int ** strcache; } ;
typedef TYPE_1__ global_State ;


 TYPE_1__* G (int *) ;
 int MEMERRMSG ;
 int MINSTRTABSIZE ;
 int STRCACHE_M ;
 int STRCACHE_N ;
 scalar_t__ STRSEED ;
 int luaC_fix (int *,int ) ;
 int luaS_newliteral (int *,int ) ;
 int luaS_resize (int *,int ) ;
 scalar_t__ make_str_seed (int *) ;
 int obj2gco (int ) ;

void luaS_init (lua_State *L) {
  global_State *g = G(L);
  int i, j;
  if (STRSEED == 0) {
    STRSEED = make_str_seed(L);
  }
  luaS_resize(L, MINSTRTABSIZE);

  g->memerrmsg = luaS_newliteral(L, MEMERRMSG);
  luaC_fix(L, obj2gco(g->memerrmsg));
  for (i = 0; i < STRCACHE_N; i++)
    for (j = 0; j < STRCACHE_M; j++)
      g->strcache[i][j] = g->memerrmsg;
}
