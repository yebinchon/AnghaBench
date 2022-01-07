
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int tag; } ;
typedef TYPE_1__ TTree ;
 int assert (int ) ;
 int nofail (TYPE_1__*) ;
 TYPE_1__* sib1 (TYPE_1__*) ;
 TYPE_1__* sib2 (TYPE_1__*) ;

__attribute__((used)) static int headfail (TTree *tree) {
 tailcall:
  switch (tree->tag) {
    case 138: case 129: case 142: case 136:
      return 1;
    case 128: case 133: case 131: case 134:
    case 141:
      return 0;
    case 139: case 135: case 132: case 143:
      tree = sib1(tree); goto tailcall;
    case 140:
      tree = sib2(tree); goto tailcall;
    case 130:
      if (!nofail(sib2(tree))) return 0;

      tree = sib1(tree); goto tailcall;
    case 137:
      if (!headfail(sib1(tree))) return 0;

      tree = sib2(tree); goto tailcall;
    default: assert(0); return 0;
  }
}
