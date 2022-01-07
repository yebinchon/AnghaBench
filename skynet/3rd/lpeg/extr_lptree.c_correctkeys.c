
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int tag; int key; int cap; } ;
typedef TYPE_1__ TTree ;


 int Carg ;
 int Cnum ;





 int assert (int) ;
 int* numsiblings ;
 TYPE_1__* sib1 (TYPE_1__*) ;
 TYPE_1__* sib2 (TYPE_1__*) ;

__attribute__((used)) static void correctkeys (TTree *tree, int n) {
  if (n == 0) return;
 tailcall:
  switch (tree->tag) {
    case 130: case 132: case 128: case 129: {
      if (tree->key > 0)
        tree->key += n;
      break;
    }
    case 131: {
      if (tree->key > 0 && tree->cap != Carg && tree->cap != Cnum)
        tree->key += n;
      break;
    }
    default: break;
  }
  switch (numsiblings[tree->tag]) {
    case 1:
      tree = sib1(tree); goto tailcall;
    case 2:
      correctkeys(sib1(tree), n);
      tree = sib2(tree); goto tailcall;
    default: assert(numsiblings[tree->tag] == 0); break;
  }
}
