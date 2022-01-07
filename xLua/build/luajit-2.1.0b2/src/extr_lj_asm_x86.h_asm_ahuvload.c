
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int ofs; } ;
struct TYPE_18__ {TYPE_1__ mrm; } ;
struct TYPE_17__ {int t; int op1; } ;
typedef int RegSet ;
typedef int Reg ;
typedef TYPE_2__ IRIns ;
typedef TYPE_3__ ASMState ;


 int CC_AE ;
 int CC_NE ;
 scalar_t__ IRT_NUM ;
 scalar_t__ LJ_64 ;
 scalar_t__ LJ_DUALNUM ;
 int LJ_TISNUM ;
 int REX_64 ;
 int RID_MAX_GPR ;
 int RID_MRM ;
 int RSET_FPR ;
 int RSET_GPR ;
 int XO_ARITHi ;
 int XO_ARITHi8 ;
 int XO_MOV ;
 int XO_MOVSD ;
 int XOg_CMP ;
 int asm_fuseahuref (TYPE_3__*,int ,int ) ;
 int asm_guardcc (TYPE_3__*,int ) ;
 int asm_load_lightud64 (TYPE_3__*,TYPE_2__*,int) ;
 int emit_i8 (TYPE_3__*,int ) ;
 int emit_mrm (TYPE_3__*,int ,int,int ) ;
 int emit_u32 (TYPE_3__*,int ) ;
 scalar_t__ irt_isaddr (int ) ;
 scalar_t__ irt_isint (int ) ;
 scalar_t__ irt_isinteger (int ) ;
 scalar_t__ irt_islightud (int ) ;
 scalar_t__ irt_isnum (int ) ;
 scalar_t__ irt_ispri (int ) ;
 int irt_toitype (int ) ;
 scalar_t__ irt_type (int ) ;
 int lua_assert (int) ;
 int ra_dest (TYPE_3__*,TYPE_2__*,int ) ;
 scalar_t__ ra_hasreg (int) ;
 scalar_t__ ra_used (TYPE_2__*) ;

__attribute__((used)) static void asm_ahuvload(ASMState *as, IRIns *ir)
{
  lua_assert(irt_isnum(ir->t) || irt_ispri(ir->t) || irt_isaddr(ir->t) ||
      (LJ_DUALNUM && irt_isint(ir->t)));
  if (ra_used(ir)) {
    RegSet allow = irt_isnum(ir->t) ? RSET_FPR : RSET_GPR;
    Reg dest = ra_dest(as, ir, allow);
    asm_fuseahuref(as, ir->op1, RSET_GPR);
    emit_mrm(as, dest < RID_MAX_GPR ? XO_MOV : XO_MOVSD, dest, RID_MRM);
  } else {
    asm_fuseahuref(as, ir->op1, RSET_GPR);
  }

  as->mrm.ofs += 4;
  asm_guardcc(as, irt_isnum(ir->t) ? CC_AE : CC_NE);
  if (LJ_64 && irt_type(ir->t) >= IRT_NUM) {
    lua_assert(irt_isinteger(ir->t) || irt_isnum(ir->t));
    emit_u32(as, LJ_TISNUM);
    emit_mrm(as, XO_ARITHi, XOg_CMP, RID_MRM);
  } else {
    emit_i8(as, irt_toitype(ir->t));
    emit_mrm(as, XO_ARITHi8, XOg_CMP, RID_MRM);
  }
}
