
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int tag; } ;
typedef TYPE_1__ TTree ;
 int assert (int ) ;
 int callrecursive (TYPE_1__*,int (*) (TYPE_1__*),int) ;
 TYPE_1__* sib1 (TYPE_1__*) ;
 TYPE_1__* sib2 (TYPE_1__*) ;

int fixedlen (TTree *tree) {
  int len = 0;
 tailcall:
  switch (tree->tag) {
    case 139: case 129: case 143:
      return len + 1;
    case 137: case 128: case 135: case 144: case 142:
      return len;
    case 133: case 131: case 134:
      return -1;
    case 140: case 132: case 136:

      tree = sib1(tree); goto tailcall;
    case 141: {
      int n1 = callrecursive(tree, fixedlen, -1);
      if (n1 < 0)
        return -1;
      else
        return len + n1;
    }
    case 130: {
      int n1 = fixedlen(sib1(tree));
      if (n1 < 0)
        return -1;

      len += n1; tree = sib2(tree); goto tailcall;
    }
    case 138: {
      int n1 = fixedlen(sib1(tree));
      int n2 = fixedlen(sib2(tree));
      if (n1 != n2 || n1 < 0)
        return -1;
      else
        return len + n1;
    }
    default: assert(0); return 0;
  };
}
