
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int key; } ;
typedef TYPE_1__ TTree ;


 int addtonewktable (int *,int ,int) ;
 TYPE_1__* auxemptycap (int ,int) ;
 int newtree (int *,int) ;

__attribute__((used)) static TTree *newemptycapkey (lua_State *L, int cap, int idx) {
  TTree *tree = auxemptycap(newtree(L, 2), cap);
  tree->key = addtonewktable(L, 0, idx);
  return tree;
}
