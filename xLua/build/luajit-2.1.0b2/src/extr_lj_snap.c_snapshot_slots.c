
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* ir; } ;
struct TYPE_6__ {int* chain; TYPE_1__ cur; int * slot; } ;
typedef TYPE_2__ jit_State ;
struct TYPE_7__ {scalar_t__ o; size_t op1; int op2; int t; } ;
typedef int TRef ;
typedef int SnapEntry ;
typedef scalar_t__ MSize ;
typedef int IRRef ;
typedef TYPE_3__ IRIns ;
typedef size_t BCReg ;


 int IRSLOAD_CONVERT ;
 int IRSLOAD_INHERIT ;
 int IRSLOAD_PARENT ;
 int IRSLOAD_READONLY ;
 size_t IR_RETF ;
 scalar_t__ IR_SLOAD ;
 scalar_t__ LJ_DUALNUM ;
 scalar_t__ LJ_SOFTFP ;
 int SNAP_CONT ;
 int SNAP_FRAME ;
 int SNAP_NORESTORE ;
 int SNAP_SOFTFPNUM ;
 int SNAP_TR (size_t,int ) ;
 scalar_t__ irt_isnum (int ) ;
 int tref_ref (int ) ;

__attribute__((used)) static MSize snapshot_slots(jit_State *J, SnapEntry *map, BCReg nslots)
{
  IRRef retf = J->chain[IR_RETF];
  BCReg s;
  MSize n = 0;
  for (s = 0; s < nslots; s++) {
    TRef tr = J->slot[s];
    IRRef ref = tref_ref(tr);
    if (ref) {
      SnapEntry sn = SNAP_TR(s, tr);
      IRIns *ir = &J->cur.ir[ref];
      if (!(sn & (SNAP_CONT|SNAP_FRAME)) &&
   ir->o == IR_SLOAD && ir->op1 == s && ref > retf) {

 if (!(ir->op2 & IRSLOAD_INHERIT))
   continue;

 if (!(LJ_DUALNUM && (ir->op2 & IRSLOAD_CONVERT)) &&
     (ir->op2 & (IRSLOAD_READONLY|IRSLOAD_PARENT)) != IRSLOAD_PARENT)
   sn |= SNAP_NORESTORE;
      }
      if (LJ_SOFTFP && irt_isnum(ir->t))
 sn |= SNAP_SOFTFPNUM;
      map[n++] = sn;
    }
  }
  return n;
}
