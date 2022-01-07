
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_16__ ;
typedef struct TYPE_17__ TYPE_13__ ;


typedef size_t uint32_t ;
struct TYPE_22__ {scalar_t__ baseslot; int needsnap; scalar_t__ maxslot; scalar_t__* base; TYPE_3__* L; TYPE_13__* fn; TYPE_2__* pt; } ;
typedef TYPE_4__ jit_State ;
typedef int int32_t ;
struct TYPE_23__ {int closed; scalar_t__ dhash; } ;
struct TYPE_21__ {scalar_t__ base; int maxstack; int stack; } ;
struct TYPE_20__ {scalar_t__ flags; } ;
struct TYPE_19__ {int * uvptr; } ;
struct TYPE_18__ {TYPE_5__ uv; } ;
struct TYPE_17__ {TYPE_1__ l; } ;
typedef scalar_t__ TRef ;
typedef int IRType ;
typedef scalar_t__ IRRef ;
typedef TYPE_5__ GCupval ;
typedef scalar_t__ BCReg ;


 scalar_t__ HASH_BIAS ;
 scalar_t__ IRCONV_NUM_INT ;
 int IRT (int ,int ) ;
 int IRTG (int ,int ) ;
 int IRTN (int ) ;
 int IRT_FUNC ;
 int IRT_NIL ;
 int IRT_PGC ;
 int IR_ADD ;
 int IR_CONV ;
 int IR_EQ ;
 int IR_OBAR ;
 int IR_SUB ;
 int IR_UGT ;
 int IR_ULOAD ;
 int IR_UREFC ;
 int IR_UREFO ;
 int IR_USTORE ;
 int LJ_DUALNUM ;
 int LJ_FR2 ;
 scalar_t__ PROTO_CLC_POLY ;
 scalar_t__ REF_BASE ;
 scalar_t__ TREF_FRAME ;
 scalar_t__ TREF_PRI (int ) ;
 scalar_t__ emitir (int ,scalar_t__,scalar_t__) ;
 TYPE_16__* gcref (int ) ;
 scalar_t__ getcurrf (TYPE_4__*) ;
 scalar_t__ getslot (TYPE_4__*,int) ;
 int hashrot (scalar_t__,scalar_t__) ;
 scalar_t__ irtype_ispri (int ) ;
 int itype2irt (scalar_t__) ;
 scalar_t__ lj_ir_kfunc (TYPE_4__*,TYPE_13__*) ;
 scalar_t__ lj_ir_kint (TYPE_4__*,int) ;
 scalar_t__ lj_record_constify (TYPE_4__*,scalar_t__) ;
 int lua_assert (int) ;
 scalar_t__ rec_upvalue_constify (TYPE_4__*,TYPE_5__*) ;
 scalar_t__ tref_isgcv (scalar_t__) ;
 scalar_t__ tref_isinteger (scalar_t__) ;
 int tref_isk (scalar_t__) ;
 scalar_t__ tref_ref (scalar_t__) ;
 int tref_type (scalar_t__) ;
 scalar_t__ tvref (int ) ;
 scalar_t__ uvval (TYPE_5__*) ;

__attribute__((used)) static TRef rec_upvalue(jit_State *J, uint32_t uv, TRef val)
{
  GCupval *uvp = &gcref(J->fn->l.uvptr[uv])->uv;
  TRef fn = getcurrf(J);
  IRRef uref;
  int needbarrier = 0;
  if (rec_upvalue_constify(J, uvp)) {
    TRef tr, kfunc;
    lua_assert(val == 0);
    if (!tref_isk(fn)) {
      if (J->pt->flags >= PROTO_CLC_POLY)
 goto noconstify;
      kfunc = lj_ir_kfunc(J, J->fn);
      emitir(IRTG(IR_EQ, IRT_FUNC), fn, kfunc);



      J->base[-1] = kfunc | TREF_FRAME;

      fn = kfunc;
    }
    tr = lj_record_constify(J, uvval(uvp));
    if (tr)
      return tr;
  }
noconstify:

  uv = (uv << 8) | (hashrot(uvp->dhash, uvp->dhash + HASH_BIAS) & 0xff);
  if (!uvp->closed) {
    uref = tref_ref(emitir(IRTG(IR_UREFO, IRT_PGC), fn, uv));

    if (uvval(uvp) >= tvref(J->L->stack) &&
 uvval(uvp) < tvref(J->L->maxstack)) {
      int32_t slot = (int32_t)(uvval(uvp) - (J->L->base - J->baseslot));
      if (slot >= 0) {
 emitir(IRTG(IR_EQ, IRT_PGC),
        REF_BASE,
        emitir(IRT(IR_ADD, IRT_PGC), uref,
        lj_ir_kint(J, (slot - 1 - LJ_FR2) * -8)));
 slot -= (int32_t)J->baseslot;
 if (val == 0) {
   return getslot(J, slot);
 } else {
   J->base[slot] = val;
   if (slot >= (int32_t)J->maxslot) J->maxslot = (BCReg)(slot+1);
   return 0;
 }
      }
    }
    emitir(IRTG(IR_UGT, IRT_PGC),
    emitir(IRT(IR_SUB, IRT_PGC), uref, REF_BASE),
    lj_ir_kint(J, (J->baseslot + J->maxslot) * 8));
  } else {
    needbarrier = 1;
    uref = tref_ref(emitir(IRTG(IR_UREFC, IRT_PGC), fn, uv));
  }
  if (val == 0) {
    IRType t = itype2irt(uvval(uvp));
    TRef res = emitir(IRTG(IR_ULOAD, t), uref, 0);
    if (irtype_ispri(t)) res = TREF_PRI(t);
    return res;
  } else {

    if (!LJ_DUALNUM && tref_isinteger(val))
      val = emitir(IRTN(IR_CONV), val, IRCONV_NUM_INT);
    emitir(IRT(IR_USTORE, tref_type(val)), uref, val);
    if (needbarrier && tref_isgcv(val))
      emitir(IRT(IR_OBAR, IRT_NIL), uref, val);
    J->needsnap = 1;
    return 0;
  }
}
