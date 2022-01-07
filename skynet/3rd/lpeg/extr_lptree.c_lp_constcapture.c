
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_9__ {int ps; } ;
struct TYPE_10__ {void* key; TYPE_1__ u; int tag; int cap; } ;
typedef TYPE_2__ TTree ;


 int Cconst ;
 int Cgroup ;
 int TCapture ;
 int TSeq ;
 int TTrue ;
 void* addtoktable (int *,int) ;
 int auxemptycap (TYPE_2__*,int ) ;
 int lua_gettop (int *) ;
 int newemptycapkey (int *,int ,int) ;
 int newktable (int *,int) ;
 int newleaf (int *,int ) ;
 TYPE_2__* newtree (int *,int) ;
 TYPE_2__* sib1 (TYPE_2__*) ;
 TYPE_2__* sib2 (TYPE_2__*) ;

__attribute__((used)) static int lp_constcapture (lua_State *L) {
  int i;
  int n = lua_gettop(L);
  if (n == 0)
    newleaf(L, TTrue);
  else if (n == 1)
    newemptycapkey(L, Cconst, 1);
  else {
    TTree *tree = newtree(L, 1 + 3 * (n - 1) + 2);
    newktable(L, n);
    tree->tag = TCapture;
    tree->cap = Cgroup;
    tree->key = 0;
    tree = sib1(tree);
    for (i = 1; i <= n - 1; i++) {
      tree->tag = TSeq;
      tree->u.ps = 3;
      auxemptycap(sib1(tree), Cconst);
      sib1(tree)->key = addtoktable(L, i);
      tree = sib2(tree);
    }
    auxemptycap(tree, Cconst);
    tree->key = addtoktable(L, i);
  }
  return 1;
}
