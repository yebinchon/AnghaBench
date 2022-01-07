
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int* cs; } ;
struct TYPE_7__ {int n; } ;
struct TYPE_8__ {int tag; TYPE_1__ u; } ;
typedef TYPE_2__ TTree ;
typedef TYPE_3__ Charset ;





 int UCHAR_MAX ;
 int assert (int) ;
 size_t i ;
 int loopset (size_t,int) ;
 int setchar (int*,int ) ;
 int* treebuffer (TYPE_2__*) ;

int tocharset (TTree *tree, Charset *cs) {
  switch (tree->tag) {
    case 128: {
      loopset(i, cs->cs[i] = treebuffer(tree)[i]);
      return 1;
    }
    case 129: {
      assert(0 <= tree->u.n && tree->u.n <= UCHAR_MAX);
      loopset(i, cs->cs[i] = 0);
      setchar(cs->cs, tree->u.n);
      return 1;
    }
    case 130: {
      loopset(i, cs->cs[i] = 0xFF);
      return 1;
    }
    default: return 0;
  }
}
