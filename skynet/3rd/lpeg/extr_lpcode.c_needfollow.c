
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int tag; } ;
typedef TYPE_1__ TTree ;
 int assert (int ) ;
 TYPE_1__* sib1 (TYPE_1__*) ;
 TYPE_1__* sib2 (TYPE_1__*) ;

__attribute__((used)) static int needfollow (TTree *tree) {
 tailcall:
  switch (tree->tag) {
    case 137: case 129: case 141:
    case 135: case 128: case 142: case 133:
    case 131: case 134: case 139: case 140:
      return 0;
    case 136: case 132:
      return 1;
    case 138:
      tree = sib1(tree); goto tailcall;
    case 130:
      tree = sib2(tree); goto tailcall;
    default: assert(0); return 0;
  }
}
