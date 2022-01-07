
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int* cs; } ;
struct TYPE_15__ {int tag; } ;
typedef TYPE_1__ TTree ;
typedef TYPE_2__ Charset ;
 int assert (int ) ;
 int cs_complement (TYPE_2__*) ;
 TYPE_2__* fullset ;
 size_t i ;
 int loopset (size_t,int) ;
 int nullable (TYPE_1__*) ;
 TYPE_1__* sib1 (TYPE_1__*) ;
 TYPE_1__* sib2 (TYPE_1__*) ;
 int tocharset (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int getfirst (TTree *tree, const Charset *follow, Charset *firstset) {
 tailcall:
  switch (tree->tag) {
    case 138: case 129: case 142: {
      tocharset(tree, firstset);
      return 0;
    }
    case 128: {
      loopset(i, firstset->cs[i] = follow->cs[i]);
      return 1;
    }
    case 136: {
      loopset(i, firstset->cs[i] = 0);
      return 0;
    }
    case 137: {
      Charset csaux;
      int e1 = getfirst(sib1(tree), follow, firstset);
      int e2 = getfirst(sib2(tree), follow, &csaux);
      loopset(i, firstset->cs[i] |= csaux.cs[i]);
      return e1 | e2;
    }
    case 130: {
      if (!nullable(sib1(tree))) {


        tree = sib1(tree); follow = fullset; goto tailcall;
      }
      else {
        Charset csaux;
        int e2 = getfirst(sib2(tree), follow, &csaux);
        int e1 = getfirst(sib1(tree), &csaux, firstset);
        if (e1 == 0) return 0;
        else if ((e1 | e2) & 2)
          return 2;
        else return e2;
      }
    }
    case 133: {
      getfirst(sib1(tree), follow, firstset);
      loopset(i, firstset->cs[i] |= follow->cs[i]);
      return 1;
    }
    case 139: case 135: case 132: {

      tree = sib1(tree); goto tailcall;
    }
    case 131: {
      int e = getfirst(sib1(tree), fullset, firstset);
      if (e) return 2;
      else return 0;
    }
    case 140: {

      tree = sib2(tree); goto tailcall;
    }
    case 143: {
      int e = getfirst(sib1(tree), follow, firstset);
      loopset(i, firstset->cs[i] &= follow->cs[i]);
      return e;
    }
    case 134: {
      if (tocharset(sib1(tree), firstset)) {
        cs_complement(firstset);
        return 1;
      }

    }
    case 141: {

      int e = getfirst(sib1(tree), follow, firstset);
      loopset(i, firstset->cs[i] = follow->cs[i]);
      return e | 1;
    }
    default: assert(0); return 0;
  }
}
