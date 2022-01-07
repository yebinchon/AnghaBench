
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;


struct TYPE_17__ {int J; } ;
struct TYPE_16__ {int t; int i; } ;
struct TYPE_15__ {int tmptv; } ;
typedef int Reg ;
typedef int IRRef ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 TYPE_1__* IR (int ) ;
 TYPE_13__* J2G (int ) ;
 scalar_t__ LJ_64 ;
 int REX_64 ;
 int REX_64IR (TYPE_1__*,int) ;
 int RID_ESP ;
 int RSET_GPR ;
 int XO_LEA ;
 int emit_loada (TYPE_2__*,int,int *) ;
 int emit_movmroi (TYPE_2__*,int,int,int ) ;
 int emit_movtomro (TYPE_2__*,int ,int,int ) ;
 int emit_rmro (TYPE_2__*,int ,int,int ,int ) ;
 int * ir_knum (TYPE_1__*) ;
 scalar_t__ irref_isk (int ) ;
 scalar_t__ irt_islightud (int ) ;
 scalar_t__ irt_isnum (int ) ;
 int irt_ispri (int ) ;
 int irt_toitype (int ) ;
 int ra_alloc1 (TYPE_2__*,int ,int ) ;
 int ra_spill (TYPE_2__*,TYPE_1__*) ;
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
