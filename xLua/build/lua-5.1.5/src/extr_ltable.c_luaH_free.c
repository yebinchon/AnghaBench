
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {scalar_t__ node; scalar_t__ array; int sizearray; } ;
typedef TYPE_1__ Table ;


 int Node ;
 int TValue ;
 scalar_t__ dummynode ;
 int luaM_free (int *,TYPE_1__*) ;
 int luaM_freearray (int *,scalar_t__,int ,int ) ;
 int sizenode (TYPE_1__*) ;

void luaH_free (lua_State *L, Table *t) {
  if (t->node != dummynode)
    luaM_freearray(L, t->node, sizenode(t), Node);
  luaM_freearray(L, t->array, t->sizearray, TValue);
  luaM_free(L, t);
}
