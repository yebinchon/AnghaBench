
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_9__ {int ps; } ;
struct TYPE_10__ {int tag; TYPE_1__ u; } ;
typedef TYPE_2__ TTree ;


 TYPE_2__* getpatt (int *,int,int*) ;
 int joinktables (int *,int,int ,int) ;
 int memcpy (int ,TYPE_2__*,int) ;
 TYPE_2__* newtree (int *,int) ;
 int sib1 (TYPE_2__*) ;
 int sib2 (TYPE_2__*) ;

__attribute__((used)) static TTree *newroot2sib (lua_State *L, int tag) {
  int s1, s2;
  TTree *tree1 = getpatt(L, 1, &s1);
  TTree *tree2 = getpatt(L, 2, &s2);
  TTree *tree = newtree(L, 1 + s1 + s2);
  tree->tag = tag;
  tree->u.ps = 1 + s1;
  memcpy(sib1(tree), tree1, s1 * sizeof(TTree));
  memcpy(sib2(tree), tree2, s2 * sizeof(TTree));
  joinktables(L, 1, sib2(tree), 2);
  return tree;
}
