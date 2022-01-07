
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_7__ {int tag; } ;
typedef TYPE_1__ TTree ;


 int copyktable (int *,int) ;
 TYPE_1__* getpatt (int *,int,int*) ;
 int memcpy (int ,TYPE_1__*,int) ;
 TYPE_1__* newtree (int *,int) ;
 int sib1 (TYPE_1__*) ;

__attribute__((used)) static TTree *newroot1sib (lua_State *L, int tag) {
  int s1;
  TTree *tree1 = getpatt(L, 1, &s1);
  TTree *tree = newtree(L, 1 + s1);
  tree->tag = tag;
  memcpy(sib1(tree), tree1, s1 * sizeof(TTree));
  copyktable(L, 1);
  return tree;
}
