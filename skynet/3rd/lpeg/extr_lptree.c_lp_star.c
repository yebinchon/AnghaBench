
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_17__ {void* tag; } ;
struct TYPE_15__ {int ps; } ;
struct TYPE_16__ {TYPE_1__ u; void* tag; } ;
typedef TYPE_2__ TTree ;


 void* TChoice ;
 void* TRep ;
 void* TTrue ;
 int copyktable (int *,int) ;
 TYPE_2__* getpatt (int *,int,int*) ;
 scalar_t__ luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 TYPE_2__* newtree (int *,int) ;
 scalar_t__ nullable (TYPE_2__*) ;
 TYPE_2__* seqaux (TYPE_2__*,TYPE_2__*,int) ;
 TYPE_2__* sib1 (TYPE_2__*) ;
 TYPE_3__* sib2 (TYPE_2__*) ;

__attribute__((used)) static int lp_star (lua_State *L) {
  int size1;
  int n = (int)luaL_checkinteger(L, 2);
  TTree *tree1 = getpatt(L, 1, &size1);
  if (n >= 0) {
    TTree *tree = newtree(L, (n + 1) * (size1 + 1));
    if (nullable(tree1))
      luaL_error(L, "loop body may accept empty string");
    while (n--)
      tree = seqaux(tree, tree1, size1);
    tree->tag = TRep;
    memcpy(sib1(tree), tree1, size1 * sizeof(TTree));
  }
  else {
    TTree *tree;
    n = -n;

    tree = newtree(L, n * (size1 + 3) - 1);
    for (; n > 1; n--) {
      tree->tag = TChoice; tree->u.ps = n * (size1 + 3) - 2;
      sib2(tree)->tag = TTrue;
      tree = sib1(tree);
      tree = seqaux(tree, tree1, size1);
    }
    tree->tag = TChoice; tree->u.ps = size1 + 1;
    sib2(tree)->tag = TTrue;
    memcpy(sib1(tree), tree1, size1 * sizeof(TTree));
  }
  copyktable(L, 1);
  return 1;
}
