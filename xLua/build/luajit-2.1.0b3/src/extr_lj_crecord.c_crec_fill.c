
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jit_State ;
struct TYPE_6__ {int i; } ;
struct TYPE_5__ {scalar_t__ tp; } ;
typedef int TRef ;
typedef int MSize ;
typedef int CTSize ;
typedef TYPE_1__ CRecMemList ;


 int CREC_FILL_MAXUNROLL ;
 int CTSIZE_PTR ;
 TYPE_4__* IR (int ) ;
 int IRCALL_memset ;
 int IRT (int ,scalar_t__) ;
 int IRTI (int ) ;
 scalar_t__ IRT_INT ;
 scalar_t__ IRT_NIL ;
 scalar_t__ IRT_U16 ;
 scalar_t__ IRT_U32 ;
 scalar_t__ IRT_U64 ;
 scalar_t__ IRT_U8 ;
 int IR_MUL ;
 int IR_XBAR ;
 scalar_t__ LJ_TARGET_UNALIGNED ;
 int U64x (int,int) ;
 int crec_fill_emit (int *,TYPE_1__*,int ,int ,int ) ;
 int crec_fill_unroll (TYPE_1__*,int,int) ;
 int emitconv (int ,scalar_t__,scalar_t__,int ) ;
 int emitir (int ,int ,int ) ;
 int lj_ir_call (int *,int ,int ,int ,int ) ;
 int lj_ir_kint (int *,int) ;
 int lj_ir_kint64 (int *,int ) ;
 scalar_t__ tref_isk (int ) ;
 int tref_ref (int ) ;

__attribute__((used)) static void crec_fill(jit_State *J, TRef trdst, TRef trlen, TRef trfill,
        CTSize step)
{
  if (tref_isk(trlen)) {
    CRecMemList ml[CREC_FILL_MAXUNROLL];
    MSize mlp;
    CTSize len = (CTSize)IR(tref_ref(trlen))->i;
    if (len == 0) return;
    if (LJ_TARGET_UNALIGNED || step >= CTSIZE_PTR)
      step = CTSIZE_PTR;
    if (step * CREC_FILL_MAXUNROLL < len) goto fallback;
    mlp = crec_fill_unroll(ml, len, step);
    if (!mlp) goto fallback;
    if (tref_isk(trfill) || ml[0].tp != IRT_U8)
      trfill = emitconv(trfill, IRT_INT, IRT_U8, 0);
    if (ml[0].tp != IRT_U8) {
      if (CTSIZE_PTR == 8 && ml[0].tp == IRT_U64) {
 if (tref_isk(trfill))
   trfill = emitconv(trfill, IRT_U64, IRT_U32, 0);
 trfill = emitir(IRT(IR_MUL, IRT_U64), trfill,
   lj_ir_kint64(J, U64x(01010101,01010101)));
      } else {
 trfill = emitir(IRTI(IR_MUL), trfill,
     lj_ir_kint(J, ml[0].tp == IRT_U16 ? 0x0101 : 0x01010101));
      }
    }
    crec_fill_emit(J, ml, mlp, trdst, trfill);
  } else {
fallback:

    lj_ir_call(J, IRCALL_memset, trdst, trfill, trlen);
  }
  emitir(IRT(IR_XBAR, IRT_NIL), 0, 0);
}
