
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int grayagain; } ;
typedef TYPE_1__ global_State ;
typedef int Table ;


 TYPE_1__* G (int *) ;
 int black2gray (int *) ;
 scalar_t__ isblack (int *) ;
 int isdead (TYPE_1__*,int *) ;
 int linkgclist (int *,int ) ;
 int lua_assert (int) ;

void luaC_barrierback_ (lua_State *L, Table *t) {
  global_State *g = G(L);
  lua_assert(isblack(t) && !isdead(g, t));
  black2gray(t);
  linkgclist(t, g->grayagain);
}
