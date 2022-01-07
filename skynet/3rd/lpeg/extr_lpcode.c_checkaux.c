
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int tag; } ;
typedef TYPE_1__ TTree ;


 int PEnofail ;
 int PEnullable ;
 int assert (int ) ;
 TYPE_1__* sib1 (TYPE_1__*) ;
 TYPE_1__* sib2 (TYPE_1__*) ;

int checkaux (TTree *tree, int pred) {
 tailcall:
  switch (tree->tag) {
    case 139: case 129: case 143:
    case 137: case 134:
      return 0;
    case 133: case 128:
      return 1;
    case 135: case 142:
      if (pred == PEnofail) return 0;
      else return 1;
    case 144:
      if (pred == PEnullable) return 1;

      tree = sib1(tree); goto tailcall;
    case 131:
      if (pred == PEnofail) return 0;

      tree = sib1(tree); goto tailcall;
    case 130:
      if (!checkaux(sib1(tree), pred)) return 0;

      tree = sib2(tree); goto tailcall;
    case 138:
      if (checkaux(sib2(tree), pred)) return 1;

      tree = sib1(tree); goto tailcall;
    case 140: case 136: case 132:

      tree = sib1(tree); goto tailcall;
    case 141:
      tree = sib2(tree); goto tailcall;
    default: assert(0); return 0;
  }
}
