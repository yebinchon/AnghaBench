
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int len; } ;
struct TYPE_9__ {scalar_t__ op1; scalar_t__ op2; scalar_t__ o; int t; int r; } ;
typedef int Reg ;
typedef scalar_t__ IRRef ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ GCstr ;
typedef int CCallInfo ;
typedef int ASMState ;


 scalar_t__ ASMREF_TMP1 ;
 TYPE_1__* IR (scalar_t__) ;
 size_t IRCALL_lj_buf_putchar ;
 size_t IRCALL_lj_buf_putmem ;
 size_t IRCALL_lj_buf_putstr ;
 size_t IRCALL_lj_strfmt_putint ;
 size_t IRCALL_lj_strfmt_putnum ;
 scalar_t__ IRTOSTR_INT ;
 scalar_t__ IRTOSTR_NUM ;
 scalar_t__ IR_KGC ;
 scalar_t__ IR_SNEW ;
 scalar_t__ IR_TOSTR ;
 int asm_gencall (int *,int const*,scalar_t__*) ;
 int asm_setupresult (int *,TYPE_1__*,int const*) ;
 int asm_tvptr (int *,int ,scalar_t__) ;
 TYPE_2__* ir_kstr (TYPE_1__*) ;
 int irt_isinteger (int ) ;
 int irt_isstr (int ) ;
 int * lj_ir_callinfo ;
 int lua_assert (int ) ;
 scalar_t__ mayfuse (int *,scalar_t__) ;
 int ra_allockreg (int *,int,int ) ;
 scalar_t__ ra_noreg (int ) ;
 int ra_releasetmp (int *,scalar_t__) ;
 int* strdata (TYPE_2__*) ;

__attribute__((used)) static void asm_bufput(ASMState *as, IRIns *ir)
{
  const CCallInfo *ci = &lj_ir_callinfo[IRCALL_lj_buf_putstr];
  IRRef args[3];
  IRIns *irs;
  int kchar = -1;
  args[0] = ir->op1;
  args[1] = ir->op2;
  irs = IR(ir->op2);
  lua_assert(irt_isstr(irs->t));
  if (irs->o == IR_KGC) {
    GCstr *s = ir_kstr(irs);
    if (s->len == 1) {
      kchar = strdata(s)[0];
      args[1] = ASMREF_TMP1;
      ci = &lj_ir_callinfo[IRCALL_lj_buf_putchar];
    }
  } else if (mayfuse(as, ir->op2) && ra_noreg(irs->r)) {
    if (irs->o == IR_TOSTR) {
      if (irs->op2 == IRTOSTR_NUM) {
 args[1] = ASMREF_TMP1;
 ci = &lj_ir_callinfo[IRCALL_lj_strfmt_putnum];
      } else {
 lua_assert(irt_isinteger(IR(irs->op1)->t));
 args[1] = irs->op1;
 if (irs->op2 == IRTOSTR_INT)
   ci = &lj_ir_callinfo[IRCALL_lj_strfmt_putint];
 else
   ci = &lj_ir_callinfo[IRCALL_lj_buf_putchar];
      }
    } else if (irs->o == IR_SNEW) {
      args[1] = irs->op1;
      args[2] = irs->op2;
      ci = &lj_ir_callinfo[IRCALL_lj_buf_putmem];
    }
  }
  asm_setupresult(as, ir, ci);
  asm_gencall(as, ci, args);
  if (args[1] == ASMREF_TMP1) {
    Reg tmp = ra_releasetmp(as, ASMREF_TMP1);
    if (kchar == -1)
      asm_tvptr(as, tmp, irs->op1);
    else
      ra_allockreg(as, kchar, tmp);
  }
}
