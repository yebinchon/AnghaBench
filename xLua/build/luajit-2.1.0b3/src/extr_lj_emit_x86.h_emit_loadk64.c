
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int x86Op ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_16__ {scalar_t__ u64; } ;
struct TYPE_15__ {scalar_t__ curins; scalar_t__ stopins; int mcbot; int mclim; scalar_t__ mctop; int J; } ;
struct TYPE_14__ {scalar_t__ i; } ;
typedef int Reg ;
typedef TYPE_1__ IRIns ;
typedef TYPE_2__ ASMState ;


 int MCLIM_REDZONE ;
 int REX_64 ;
 int RID_RIP ;
 int RSET_FPR ;
 int RSET_GPR ;
 int XI_INT3 ;
 int XO_ARITH (int ) ;
 int XO_MOV ;
 int XO_MOVSD ;
 int XO_XORPS ;
 int XOg_XOR ;
 scalar_t__ checki32 (intptr_t) ;
 intptr_t dispofs (TYPE_2__*,scalar_t__ const*) ;
 int emit_loadu64 (TYPE_2__*,int,scalar_t__ const) ;
 int emit_rma (TYPE_2__*,int ,int,scalar_t__ const*) ;
 int emit_rmro (TYPE_2__*,int ,int,int ,scalar_t__) ;
 int emit_rr (TYPE_2__*,int ,int,int) ;
 TYPE_5__* ir_k64 (TYPE_1__*) ;
 int lj_mcode_commitbot (int ,int) ;
 int lua_assert (int) ;
 intptr_t mcpofs (TYPE_2__*,...) ;
 intptr_t mctopofs (TYPE_2__*,scalar_t__ const*) ;
 scalar_t__ rset_test (int ,int) ;

__attribute__((used)) static void emit_loadk64(ASMState *as, Reg r, IRIns *ir)
{
  Reg r64;
  x86Op xo;
  const uint64_t *k = &ir_k64(ir)->u64;
  if (rset_test(RSET_FPR, r)) {
    r64 = r;
    xo = XO_MOVSD;
  } else {
    r64 = r | REX_64;
    xo = XO_MOV;
  }
  if (*k == 0) {
    emit_rr(as, rset_test(RSET_FPR, r) ? XO_XORPS : XO_ARITH(XOg_XOR), r, r);
  } else {
    emit_rma(as, xo, r64, k);

  }
}
