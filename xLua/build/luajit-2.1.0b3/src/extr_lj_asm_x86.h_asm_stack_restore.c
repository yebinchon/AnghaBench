
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_29__ {int* snapmap; } ;
struct TYPE_28__ {TYPE_1__* J; TYPE_8__* T; } ;
struct TYPE_27__ {int i; int t; } ;
struct TYPE_26__ {size_t mapofs; size_t nent; } ;
struct TYPE_24__ {int hi; int lo; } ;
struct TYPE_25__ {TYPE_2__ u32; } ;
struct TYPE_23__ {int L; } ;
typedef TYPE_3__ TValue ;
typedef TYPE_4__ SnapShot ;
typedef int SnapEntry ;
typedef int Reg ;
typedef size_t MSize ;
typedef int IRRef ;
typedef TYPE_5__ IRIns ;
typedef scalar_t__ BCReg ;
typedef TYPE_6__ ASMState ;


 TYPE_5__* IR (int ) ;
 scalar_t__ LJ_64 ;
 scalar_t__ LJ_DUALNUM ;
 int LJ_FR2 ;
 int LJ_TISNUM ;
 int REX_64 ;
 int REX_64IR (TYPE_5__*,int ) ;
 int RID_BASE ;
 int RSET_FPR ;
 int RSET_GPR ;
 int SNAP_CONT ;
 int SNAP_FRAME ;
 int SNAP_NORESTORE ;
 int XO_ARITHi ;
 int XO_MOVSDto ;
 int XO_MOVmi ;
 int XOg_OR ;
 int checkmclim (TYPE_6__*) ;
 int emit_i32 (TYPE_6__*,int) ;
 int emit_movmroi (TYPE_6__*,int ,int,int) ;
 int emit_movtomro (TYPE_6__*,int ,int ,int) ;
 int emit_rmro (TYPE_6__*,int ,int ,int ,int) ;
 int emit_u32 (TYPE_6__*,int) ;
 int irref_isk (int ) ;
 scalar_t__ irt_is64 (int ) ;
 scalar_t__ irt_isaddr (int ) ;
 scalar_t__ irt_isinteger (int ) ;
 scalar_t__ irt_islightud (int ) ;
 scalar_t__ irt_isnum (int ) ;
 scalar_t__ irt_ispri (int ) ;
 int irt_toitype (int ) ;
 int lj_ir_kvalue (int ,TYPE_3__*,TYPE_5__*) ;
 int lua_assert (int) ;
 int ra_alloc1 (TYPE_6__*,int ,int ) ;
 int rset_exclude (int ,int ) ;
 int snap_nextofs (TYPE_8__*,TYPE_4__*) ;
 int snap_ref (int) ;
 scalar_t__ snap_slot (int) ;
 scalar_t__ tvisnil (TYPE_3__*) ;

__attribute__((used)) static void asm_stack_restore(ASMState *as, SnapShot *snap)
{
  SnapEntry *map = &as->T->snapmap[snap->mapofs];

  SnapEntry *flinks = &as->T->snapmap[snap_nextofs(as->T, snap)-1-LJ_FR2];

  MSize n, nent = snap->nent;

  for (n = 0; n < nent; n++) {
    SnapEntry sn = map[n];
    BCReg s = snap_slot(sn);
    int32_t ofs = 8*((int32_t)s-1-LJ_FR2);
    IRRef ref = snap_ref(sn);
    IRIns *ir = IR(ref);
    if ((sn & SNAP_NORESTORE))
      continue;
    if (irt_isnum(ir->t)) {
      Reg src = ra_alloc1(as, ref, RSET_FPR);
      emit_rmro(as, XO_MOVSDto, src, RID_BASE, ofs);
    } else {
      lua_assert(irt_ispri(ir->t) || irt_isaddr(ir->t) ||
   (LJ_DUALNUM && irt_isinteger(ir->t)));
      if (!irref_isk(ref)) {
 Reg src = ra_alloc1(as, ref, rset_exclude(RSET_GPR, RID_BASE));
 emit_movtomro(as, REX_64IR(ir, src), RID_BASE, ofs);
      } else if (!irt_ispri(ir->t)) {
 emit_movmroi(as, RID_BASE, ofs, ir->i);

      }
      if ((sn & (SNAP_CONT|SNAP_FRAME))) {

 if (s != 0)
   emit_movmroi(as, RID_BASE, ofs+4, (int32_t)(*flinks--));


      } else {
 if (!(LJ_64 && irt_islightud(ir->t)))
   emit_movmroi(as, RID_BASE, ofs+4, irt_toitype(ir->t));

      }
    }
    checkmclim(as);
  }
  lua_assert(map + nent == flinks);
}
