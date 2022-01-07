
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_8__ {int tag; } ;
typedef TYPE_1__ TTree ;


 int TAny ;
 int TNot ;
 int TTrue ;
 int fillseq (TYPE_1__*,int ,int,int *) ;
 TYPE_1__* newleaf (int *,int ) ;
 TYPE_1__* newtree (int *,int) ;
 TYPE_1__* sib1 (TYPE_1__*) ;

__attribute__((used)) static TTree *numtree (lua_State *L, int n) {
  if (n == 0)
    return newleaf(L, TTrue);
  else {
    TTree *tree, *nd;
    if (n > 0)
      tree = nd = newtree(L, 2 * n - 1);
    else {
      n = -n;
      tree = newtree(L, 2 * n);
      tree->tag = TNot;
      nd = sib1(tree);
    }
    fillseq(nd, TAny, n, ((void*)0));
    return tree;
  }
}
