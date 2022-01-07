
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_8__ {int tag; int key; } ;
typedef TYPE_1__ TTree ;


 int MAXRULES ;
 int assert (int ) ;
 int nullable (TYPE_1__*) ;
 TYPE_1__* sib1 (TYPE_1__*) ;
 TYPE_1__* sib2 (TYPE_1__*) ;
 int verifyerror (int *,int*,int) ;

__attribute__((used)) static int verifyrule (lua_State *L, TTree *tree, int *passed, int npassed,
                       int nb) {
 tailcall:
  switch (tree->tag) {
    case 138: case 129: case 142:
    case 136:
      return nb;
    case 128:
    case 141:
      return 1;
    case 134: case 143: case 133:

      tree = sib1(tree); nb = 1; goto tailcall;
    case 139: case 131:

      tree = sib1(tree); goto tailcall;
    case 140:

      tree = sib2(tree); goto tailcall;
    case 130:
      if (!verifyrule(L, sib1(tree), passed, npassed, 0))
        return nb;

      tree = sib2(tree); goto tailcall;
    case 137:
      nb = verifyrule(L, sib1(tree), passed, npassed, nb);

      tree = sib2(tree); goto tailcall;
    case 132:
      if (npassed >= MAXRULES)
        return verifyerror(L, passed, npassed);
      else {
        passed[npassed++] = tree->key;

        tree = sib1(tree); goto tailcall;
      }
    case 135:
      return nullable(tree);
    default: assert(0); return 0;
  }
}
