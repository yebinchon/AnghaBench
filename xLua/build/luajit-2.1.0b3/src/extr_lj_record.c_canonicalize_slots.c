
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int baseslot; int maxslot; int * slot; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_6__ {scalar_t__ o; int op2; } ;
typedef int TRef ;
typedef TYPE_2__ IRIns ;
typedef int BCReg ;


 TYPE_2__* IR (int ) ;
 int IRCONV_NUM_INT ;
 int IRSLOAD_READONLY ;
 int IRTN (int ) ;
 int IR_CONV ;
 scalar_t__ IR_SLOAD ;
 scalar_t__ LJ_DUALNUM ;
 int emitir (int ,int ,int ) ;
 scalar_t__ tref_isinteger (int ) ;
 int tref_ref (int ) ;

__attribute__((used)) static void canonicalize_slots(jit_State *J)
{
  BCReg s;
  if (LJ_DUALNUM) return;
  for (s = J->baseslot+J->maxslot-1; s >= 1; s--) {
    TRef tr = J->slot[s];
    if (tref_isinteger(tr)) {
      IRIns *ir = IR(tref_ref(tr));
      if (!(ir->o == IR_SLOAD && (ir->op2 & IRSLOAD_READONLY)))
 J->slot[s] = emitir(IRTN(IR_CONV), tr, IRCONV_NUM_INT);
    }
  }
}
