
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int jit_State ;
struct TYPE_9__ {int val; } ;
struct TYPE_8__ {scalar_t__ o; int op2; int op1; } ;
struct TYPE_7__ {int mode; int * sp; int * maxsp; int * J; } ;
typedef int NarrowIns ;
typedef TYPE_1__ NarrowConv ;
typedef int IRRef ;
typedef TYPE_2__ IRIns ;
typedef TYPE_3__ BPropEntry ;


 TYPE_2__* IR (int ) ;
 int IRCONV_ANY ;
 int IRCONV_CONVMASK ;
 int IRCONV_TOBIT ;
 int IRT (scalar_t__,int ) ;
 int IRT_INT ;
 scalar_t__ IR_ADD ;
 scalar_t__ IR_ADDOV ;
 scalar_t__ IR_MULOV ;
 scalar_t__ IR_SUBOV ;
 void* NARROWINS (int ,int ) ;
 int NARROW_MAX_BACKPROP ;
 int NARROW_REF ;
 TYPE_3__* narrow_bpc_get (int *,int ,int ) ;

__attribute__((used)) static void narrow_stripov_backprop(NarrowConv *nc, IRRef ref, int depth)
{
  jit_State *J = nc->J;
  IRIns *ir = IR(ref);
  if (ir->o == IR_ADDOV || ir->o == IR_SUBOV ||
      (ir->o == IR_MULOV && (nc->mode & IRCONV_CONVMASK) == IRCONV_ANY)) {
    BPropEntry *bp = narrow_bpc_get(nc->J, ref, IRCONV_TOBIT);
    if (bp) {
      ref = bp->val;
    } else if (++depth < NARROW_MAX_BACKPROP && nc->sp < nc->maxsp) {
      NarrowIns *savesp = nc->sp;
      narrow_stripov_backprop(nc, ir->op1, depth);
      if (nc->sp < nc->maxsp) {
 narrow_stripov_backprop(nc, ir->op2, depth);
 if (nc->sp < nc->maxsp) {
   *nc->sp++ = NARROWINS(IRT(ir->o - IR_ADDOV + IR_ADD, IRT_INT), ref);
   return;
 }
      }
      nc->sp = savesp;
    }
  }
  *nc->sp++ = NARROWINS(NARROW_REF, ref);
}
