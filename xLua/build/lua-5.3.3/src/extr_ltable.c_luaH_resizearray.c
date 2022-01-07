
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {int node; } ;
typedef TYPE_1__ Table ;


 scalar_t__ isdummy (int ) ;
 int luaH_resize (int *,TYPE_1__*,unsigned int,int) ;
 int sizenode (TYPE_1__*) ;

void luaH_resizearray (lua_State *L, Table *t, unsigned int nasize) {
  int nsize = isdummy(t->node) ? 0 : sizenode(t);
  luaH_resize(L, t, nasize, nsize);
}
