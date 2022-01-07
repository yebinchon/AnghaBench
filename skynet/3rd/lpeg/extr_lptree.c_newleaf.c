
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int tag; } ;
typedef TYPE_1__ TTree ;


 TYPE_1__* newtree (int *,int) ;

__attribute__((used)) static TTree *newleaf (lua_State *L, int tag) {
  TTree *tree = newtree(L, 1);
  tree->tag = tag;
  return tree;
}
