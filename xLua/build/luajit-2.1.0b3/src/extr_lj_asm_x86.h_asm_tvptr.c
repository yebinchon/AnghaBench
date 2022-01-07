
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_19__ ;
typedef struct TYPE_21__ TYPE_18__ ;


struct TYPE_26__ {TYPE_19__* J; } ;
struct TYPE_25__ {int i; int t; } ;
struct TYPE_23__ {int hi; int lo; } ;
struct TYPE_24__ {TYPE_1__ u32; } ;
struct TYPE_22__ {int L; } ;
struct TYPE_21__ {int tmptv; } ;
typedef TYPE_2__ TValue ;
typedef int Reg ;
typedef int IRRef ;
typedef TYPE_3__ IRIns ;
typedef TYPE_4__ ASMState ;


 TYPE_3__* IR (int ) ;
 TYPE_18__* J2G (TYPE_19__*) ;
 scalar_t__ LJ_64 ;
 int REX_64 ;
 int REX_64IR (TYPE_3__*,int) ;
 int RID_ESP ;
 int RSET_GPR ;
 int XO_ARITHi ;
 int XO_LEA ;
 int XOg_OR ;
 int emit_loada (TYPE_4__*,int,int *) ;
 int emit_movmroi (TYPE_4__*,int,int,int) ;
 int emit_movtomro (TYPE_4__*,int ,int,int ) ;
 int emit_rmro (TYPE_4__*,int ,int,int,int) ;
 int emit_u32 (TYPE_4__*,int) ;
 int * ir_knum (TYPE_3__*) ;
 scalar_t__ irref_isk (int ) ;
 scalar_t__ irt_is64 (int ) ;
 scalar_t__ irt_islightud (int ) ;
 scalar_t__ irt_isnum (int ) ;
 int irt_ispri (int ) ;
 int irt_toitype (int ) ;
 int lj_ir_kvalue (int ,TYPE_2__*,TYPE_3__*) ;
 int ra_alloc1 (TYPE_4__*,int ,int ) ;
 int ra_spill (TYPE_4__*,TYPE_3__*) ;
 int rset_exclude (int ,int) ;

__attribute__((used)) static void asm_tvptr(ASMState *as, Reg dest, IRRef ref)
{
  IRIns *ir = IR(ref);
  if (irt_isnum(ir->t)) {

    if (irref_isk(ref))
      emit_loada(as, dest, ir_knum(ir));
    else
      emit_rmro(as, XO_LEA, dest|REX_64, RID_ESP, ra_spill(as, ir));
  } else {
    if (!irref_isk(ref)) {
      Reg src = ra_alloc1(as, ref, rset_exclude(RSET_GPR, dest));
      emit_movtomro(as, REX_64IR(ir, src), dest, 0);
    } else if (!irt_ispri(ir->t)) {
      emit_movmroi(as, dest, 0, ir->i);
    }
    if (!(LJ_64 && irt_islightud(ir->t)))
      emit_movmroi(as, dest, 4, irt_toitype(ir->t));

    emit_loada(as, dest, &J2G(as->J)->tmptv);
  }
}
