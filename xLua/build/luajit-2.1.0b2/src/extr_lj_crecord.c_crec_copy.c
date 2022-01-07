
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int jit_State ;
struct TYPE_9__ {int i; } ;
struct TYPE_8__ {int info; } ;
typedef int TRef ;
typedef scalar_t__ MSize ;
typedef size_t IRType ;
typedef TYPE_1__ CType ;
typedef int CTState ;
typedef int CTSize ;
typedef int CRecMemList ;


 int CREC_COPY_MAXLEN ;
 int CREC_COPY_MAXUNROLL ;
 int CTF_UNION ;
 int CTSIZE_PTR ;
 TYPE_7__* IR (int ) ;
 int IRCALL_memcpy ;
 int IRT (int ,int ) ;
 size_t IRT_CDATA ;
 int IRT_NIL ;
 int IR_XBAR ;
 int J2G (int *) ;
 scalar_t__ LJ_TARGET_UNALIGNED ;
 int crec_copy_emit (int *,int *,scalar_t__,int ,int ) ;
 scalar_t__ crec_copy_struct (int *,int *,TYPE_1__*) ;
 scalar_t__ crec_copy_unroll (int *,int,int,size_t) ;
 size_t crec_ct2irt (int *,TYPE_1__*) ;
 unsigned int ctype_align (int) ;
 int * ctype_ctsG (int ) ;
 scalar_t__ ctype_isarray (int) ;
 scalar_t__ ctype_isstruct (int) ;
 TYPE_1__* ctype_rawchild (int *,TYPE_1__*) ;
 int emitir (int ,int ,int ) ;
 int lj_ir_call (int *,int ,int ,int ,int ) ;
 int* lj_ir_type_size ;
 int lua_assert (int) ;
 scalar_t__ tref_isk (int ) ;
 int tref_ref (int ) ;

__attribute__((used)) static void crec_copy(jit_State *J, TRef trdst, TRef trsrc, TRef trlen,
        CType *ct)
{
  if (tref_isk(trlen)) {
    CRecMemList ml[CREC_COPY_MAXUNROLL];
    MSize mlp = 0;
    CTSize step = 1, len = (CTSize)IR(tref_ref(trlen))->i;
    IRType tp = IRT_CDATA;
    int needxbar = 0;
    if (len == 0) return;
    if (len > CREC_COPY_MAXLEN) goto fallback;
    if (ct) {
      CTState *cts = ctype_ctsG(J2G(J));
      lua_assert(ctype_isarray(ct->info) || ctype_isstruct(ct->info));
      if (ctype_isarray(ct->info)) {
 CType *cct = ctype_rawchild(cts, ct);
 tp = crec_ct2irt(cts, cct);
 if (tp == IRT_CDATA) goto rawcopy;
 step = lj_ir_type_size[tp];
 lua_assert((len & (step-1)) == 0);
      } else if ((ct->info & CTF_UNION)) {
 step = (1u << ctype_align(ct->info));
 goto rawcopy;
      } else {
 mlp = crec_copy_struct(ml, cts, ct);
 goto emitcopy;
      }
    } else {
    rawcopy:
      needxbar = 1;
      if (LJ_TARGET_UNALIGNED || step >= CTSIZE_PTR)
 step = CTSIZE_PTR;
    }
    mlp = crec_copy_unroll(ml, len, step, tp);
  emitcopy:
    if (mlp) {
      crec_copy_emit(J, ml, mlp, trdst, trsrc);
      if (needxbar)
 emitir(IRT(IR_XBAR, IRT_NIL), 0, 0);
      return;
    }
  }
fallback:

  lj_ir_call(J, IRCALL_memcpy, trdst, trsrc, trlen);
  emitir(IRT(IR_XBAR, IRT_NIL), 0, 0);
}
