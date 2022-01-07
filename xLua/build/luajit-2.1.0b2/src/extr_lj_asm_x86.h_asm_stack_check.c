
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int int32_t ;
struct TYPE_14__ {int J; } ;
struct TYPE_13__ {int r; } ;
struct TYPE_12__ {int jit_base; } ;
typedef scalar_t__ RegSet ;
typedef int Reg ;
typedef TYPE_1__ IRIns ;
typedef int ExitNo ;
typedef int BCReg ;
typedef TYPE_2__ ASMState ;


 int CC_B ;
 TYPE_11__* J2G (int ) ;
 int REX_64 ;
 int RID_BASE ;
 int RID_EAX ;
 int RID_ESP ;
 int RID_NONE ;
 scalar_t__ RSET_EMPTY ;
 int XG_ARITHi (int ) ;
 int XO_ARITH (int ) ;
 int XO_MOV ;
 int XO_MOVto ;
 int XOg_CMP ;
 int XOg_SUB ;
 int cur_L ;
 int emit_getgl (TYPE_2__*,int,int ) ;
 int emit_gri (TYPE_2__*,int ,int,int ) ;
 int emit_jcc (TYPE_2__*,int ,int ) ;
 int emit_rmro (TYPE_2__*,int ,int,int,int ) ;
 int emit_rr (TYPE_2__*,int ,int,int) ;
 int exitstub_addr (int ,int ) ;
 int lua_State ;
 int maxstack ;
 int offsetof (int ,int ) ;
 int ptr2addr (int *) ;
 scalar_t__ ra_hasreg (int) ;
 int ra_modified (TYPE_2__*,int) ;
 int rset_pickbot (scalar_t__) ;

__attribute__((used)) static void asm_stack_check(ASMState *as, BCReg topslot,
       IRIns *irp, RegSet allow, ExitNo exitno)
{

  Reg pbase = irp ? irp->r : RID_BASE;
  Reg r = allow ? rset_pickbot(allow) : RID_EAX;
  emit_jcc(as, CC_B, exitstub_addr(as->J, exitno));
  if (allow == RSET_EMPTY)
    emit_rmro(as, XO_MOV, r|REX_64, RID_ESP, 0);
  else
    ra_modified(as, r);
  emit_gri(as, XG_ARITHi(XOg_CMP), r, (int32_t)(8*topslot));
  if (ra_hasreg(pbase) && pbase != r)
    emit_rr(as, XO_ARITH(XOg_SUB), r, pbase);
  else
    emit_rmro(as, XO_ARITH(XOg_SUB), r, RID_NONE,
       ptr2addr(&J2G(as->J)->jit_base));
  emit_rmro(as, XO_MOV, r, r, offsetof(lua_State, maxstack));
  emit_getgl(as, r, cur_L);
  if (allow == RSET_EMPTY)
    emit_rmro(as, XO_MOVto, r|REX_64, RID_ESP, 0);
}
