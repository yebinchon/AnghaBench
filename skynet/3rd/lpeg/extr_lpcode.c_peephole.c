
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int ncode; TYPE_1__* p; } ;
struct TYPE_11__ {int code; } ;
struct TYPE_12__ {TYPE_2__ i; } ;
struct TYPE_10__ {TYPE_3__* code; } ;
typedef TYPE_3__ Instruction ;
typedef TYPE_4__ CompileState ;


 int IAny ;
 int assert (int) ;
 int finallabel (TYPE_3__*,int) ;
 int finaltarget (TYPE_3__*,int) ;
 int jumptothere (TYPE_4__*,int,int) ;
 scalar_t__ sizei (TYPE_3__*) ;

__attribute__((used)) static void peephole (CompileState *compst) {
  Instruction *code = compst->p->code;
  int i;
  for (i = 0; i < compst->ncode; i += sizei(&code[i])) {
   redo:
    switch (code[i].i.code) {
      case 138: case 139: case 137: case 132:
      case 140: case 129: case 128:
      case 130: {
        jumptothere(compst, i, finallabel(code, i));
        break;
      }
      case 133: {
        int ft = finaltarget(code, i);
        switch (code[ft].i.code) {
          case 131: case 135: case 134:
          case 136: {
            code[i] = code[ft];
            code[i + 1].i.code = IAny;
            break;
          }
          case 137: case 132:
          case 140: {
            int fft = finallabel(code, ft);
            code[i] = code[ft];
            jumptothere(compst, i, fft);
            goto redo;
          }
          default: {
            jumptothere(compst, i, ft);
            break;
          }
        }
        break;
      }
      default: break;
    }
  }
  assert(code[i - 1].i.code == 136);
}
