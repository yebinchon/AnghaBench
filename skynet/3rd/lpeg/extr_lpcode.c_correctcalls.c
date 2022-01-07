
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* p; } ;
struct TYPE_10__ {scalar_t__ code; int key; } ;
struct TYPE_11__ {TYPE_2__ i; } ;
struct TYPE_9__ {TYPE_3__* code; } ;
typedef TYPE_3__ Instruction ;
typedef TYPE_4__ CompileState ;


 scalar_t__ ICall ;
 scalar_t__ IJmp ;
 scalar_t__ IOpenCall ;
 scalar_t__ IRet ;
 int assert (int) ;
 size_t finaltarget (TYPE_3__*,int) ;
 int jumptothere (TYPE_4__*,int,int) ;
 scalar_t__ sizei (TYPE_3__*) ;

__attribute__((used)) static void correctcalls (CompileState *compst, int *positions,
                          int from, int to) {
  int i;
  Instruction *code = compst->p->code;
  for (i = from; i < to; i += sizei(&code[i])) {
    if (code[i].i.code == IOpenCall) {
      int n = code[i].i.key;
      int rule = positions[n];
      assert(rule == from || code[rule - 1].i.code == IRet);
      if (code[finaltarget(code, i + 2)].i.code == IRet)
        code[i].i.code = IJmp;
      else
        code[i].i.code = ICall;
      jumptothere(compst, i, rule);
    }
  }
  assert(i == to);
}
