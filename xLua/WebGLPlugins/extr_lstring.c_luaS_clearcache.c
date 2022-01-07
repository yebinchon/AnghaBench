
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int memerrmsg; int ** strcache; } ;
typedef TYPE_1__ global_State ;


 int STRCACHE_M ;
 int STRCACHE_N ;
 scalar_t__ iswhite (int ) ;

void luaS_clearcache (global_State *g) {
  int i, j;
  for (i = 0; i < STRCACHE_N; i++)
    for (j = 0; j < STRCACHE_M; j++) {
    if (iswhite(g->strcache[i][j]))
      g->strcache[i][j] = g->memerrmsg;
    }
}
