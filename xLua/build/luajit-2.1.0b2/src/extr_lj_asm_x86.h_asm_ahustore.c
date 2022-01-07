
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_11__ {int ofs; } ;
struct TYPE_13__ {TYPE_1__ mrm; } ;
struct TYPE_12__ {scalar_t__ r; int t; int i; int op1; int op2; } ;
typedef int RegSet ;
typedef int Reg ;
typedef TYPE_2__ IRIns ;
typedef TYPE_3__ ASMState ;


 TYPE_2__* IR (int ) ;
 scalar_t__ LJ_DUALNUM ;
 int REX_64 ;
 int RID_MRM ;
 int RID_NONE ;
 scalar_t__ RID_SINK ;
 int RSET_FPR ;
 int RSET_GPR ;
 int XO_MOVSDto ;
 int XO_MOVmi ;
 int XO_MOVto ;
 int asm_fuseahuref (TYPE_3__*,int ,int ) ;
 int emit_i32 (TYPE_3__*,int ) ;
 int emit_mrm (TYPE_3__*,int ,int,int ) ;
 int irref_isk (int ) ;
 scalar_t__ irt_isaddr (int ) ;
 scalar_t__ irt_isinteger (int ) ;
 scalar_t__ irt_islightud (int ) ;
 scalar_t__ irt_isnum (int ) ;
 int irt_ispri (int ) ;
 scalar_t__ irt_toitype (int ) ;
 int lua_assert (int) ;
 int ra_alloc1 (TYPE_3__*,int ,int ) ;
 scalar_t__ ra_hasreg (int) ;
 int rset_clear (int ,int) ;
 int rset_exclude (int ,int) ;

__attribute__((used)) static void asm_ahustore(ASMState *as, IRIns *ir)
{
  if (ir->r == RID_SINK)
    return;
  if (irt_isnum(ir->t)) {
    Reg src = ra_alloc1(as, ir->op2, RSET_FPR);
    asm_fuseahuref(as, ir->op1, RSET_GPR);
    emit_mrm(as, XO_MOVSDto, src, RID_MRM);






  } else {
    IRIns *irr = IR(ir->op2);
    RegSet allow = RSET_GPR;
    Reg src = RID_NONE;
    if (!irref_isk(ir->op2)) {
      src = ra_alloc1(as, ir->op2, allow);
      rset_clear(allow, src);
    }
    asm_fuseahuref(as, ir->op1, allow);
    if (ra_hasreg(src)) {
      emit_mrm(as, XO_MOVto, src, RID_MRM);
    } else if (!irt_ispri(irr->t)) {
      lua_assert(irt_isaddr(ir->t) || (LJ_DUALNUM && irt_isinteger(ir->t)));
      emit_i32(as, irr->i);
      emit_mrm(as, XO_MOVmi, 0, RID_MRM);
    }
    as->mrm.ofs += 4;
    emit_i32(as, (int32_t)irt_toitype(ir->t));
    emit_mrm(as, XO_MOVmi, 0, RID_MRM);
  }
}
