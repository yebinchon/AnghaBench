
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int tag; } ;
typedef TYPE_1__ TTree ;







 int assert (int) ;
 int callrecursive (TYPE_1__*,int (*) (TYPE_1__*),int ) ;
 int * numsiblings ;
 TYPE_1__* sib1 (TYPE_1__*) ;
 TYPE_1__* sib2 (TYPE_1__*) ;

int hascaptures (TTree *tree) {
 tailcall:
  switch (tree->tag) {
    case 131: case 128:
      return 1;
    case 132:
      return callrecursive(tree, hascaptures, 0);
    case 129:
      tree = sib1(tree); goto tailcall;
    case 130: assert(0);
    default: {
      switch (numsiblings[tree->tag]) {
        case 1:
          tree = sib1(tree); goto tailcall;
        case 2:
          if (hascaptures(sib1(tree)))
            return 1;

          tree = sib2(tree); goto tailcall;
        default: assert(numsiblings[tree->tag] == 0); return 0;
      }
    }
  }
}
