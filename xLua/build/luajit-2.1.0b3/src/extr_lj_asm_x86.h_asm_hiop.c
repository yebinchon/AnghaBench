
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {int flags; int o; scalar_t__ r; int op1; int curins; int * flagmcp; } ;
typedef int Reg ;
typedef TYPE_1__ IRIns ;
typedef TYPE_1__ ASMState ;






 int IR_CONV ;
 int IR_NE ;


 int IR_XSTORE ;
 int JIT_F_OPT_DCE ;
 scalar_t__ LJ_UNLIKELY (int) ;
 int RID2RSET (int ) ;
 int RID_RETLO ;
 scalar_t__ RID_SINK ;
 int RSET_GPR ;
 int UNUSED (TYPE_1__*) ;
 int XO_ARITHi8 ;
 int XO_GROUP3 ;
 int XOg_ADC ;
 int XOg_ADD ;
 int XOg_NEG ;
 int XOg_SBB ;
 int XOg_SUB ;
 int asm_comp_int64 (TYPE_1__*,TYPE_1__*) ;
 int asm_conv64 (TYPE_1__*,TYPE_1__*) ;
 int asm_fxstore (TYPE_1__*,TYPE_1__*) ;
 int asm_intarith (TYPE_1__*,TYPE_1__*,int ) ;
 int asm_neg_not (TYPE_1__*,TYPE_1__*,int ) ;
 int emit_i8 (TYPE_1__*,int ) ;
 int emit_rr (TYPE_1__*,int ,int ,int ) ;
 int lua_assert (int ) ;
 int ra_allocref (TYPE_1__*,int ,int ) ;
 int ra_dest (TYPE_1__*,TYPE_1__*,int ) ;
 int ra_left (TYPE_1__*,int ,int ) ;
 int ra_used (TYPE_1__*) ;

__attribute__((used)) static void asm_hiop(ASMState *as, IRIns *ir)
{
  UNUSED(as); UNUSED(ir); lua_assert(0);

}
