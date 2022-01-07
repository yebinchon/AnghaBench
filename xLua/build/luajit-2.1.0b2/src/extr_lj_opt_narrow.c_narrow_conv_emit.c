
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int jit_State ;
typedef int int64_t ;
typedef scalar_t__ int32_t ;
struct TYPE_7__ {scalar_t__ i; } ;
struct TYPE_6__ {scalar_t__ ot; int op2; int t; } ;
struct TYPE_5__ {int* stack; int* sp; int t; int mode; } ;
typedef int NarrowIns ;
typedef TYPE_1__ NarrowConv ;
typedef int IRRef1 ;
typedef int IRRef ;
typedef scalar_t__ IROpT ;


 TYPE_4__* IR (scalar_t__) ;
 int IRCONV_CHECK ;
 int IRCONV_CONVMASK ;
 int IRCONV_INDEX ;
 int IRCONV_SEXT ;
 scalar_t__ IRT (int ,int) ;
 scalar_t__ IRTG (scalar_t__,int ) ;
 int IRT_I64 ;
 int IRT_INT ;
 scalar_t__ IR_ADD ;
 scalar_t__ IR_ADDOV ;
 int IR_CONV ;
 scalar_t__ NARROW_CONV ;
 scalar_t__ NARROW_INT ;
 scalar_t__ NARROW_REF ;
 scalar_t__ NARROW_SEXT ;
 int emitir (scalar_t__,int,int) ;
 int emitir_raw (scalar_t__,int,int ) ;
 TYPE_3__* fins ;
 scalar_t__ irref_isk (scalar_t__) ;
 scalar_t__ irt_isguard (int ) ;
 int lj_ir_kint (int *,int ) ;
 int lj_ir_kint64 (int *,int ) ;
 int lua_assert (int) ;
 int narrow_bpc_set (int *,scalar_t__,scalar_t__,int) ;
 scalar_t__ narrow_op (int) ;
 scalar_t__ narrow_ref (int) ;

__attribute__((used)) static IRRef narrow_conv_emit(jit_State *J, NarrowConv *nc)
{

  IROpT guardot = irt_isguard(fins->t) ? IRTG(IR_ADDOV-IR_ADD, 0) : 0;
  IROpT convot = fins->ot;
  IRRef1 convop2 = fins->op2;
  NarrowIns *next = nc->stack;
  NarrowIns *last = nc->sp;
  NarrowIns *sp = nc->stack;
  while (next < last) {
    NarrowIns ref = *next++;
    IROpT op = narrow_op(ref);
    if (op == NARROW_REF) {
      *sp++ = ref;
    } else if (op == NARROW_CONV) {
      *sp++ = emitir_raw(convot, ref, convop2);
    } else if (op == NARROW_SEXT) {
      lua_assert(sp >= nc->stack+1);
      sp[-1] = emitir(IRT(IR_CONV, IRT_I64), sp[-1],
        (IRT_I64<<5)|IRT_INT|IRCONV_SEXT);
    } else if (op == NARROW_INT) {
      lua_assert(next < last);
      *sp++ = nc->t == IRT_I64 ?
       lj_ir_kint64(J, (int64_t)(int32_t)*next++) :
       lj_ir_kint(J, *next++);
    } else {
      IRRef mode = nc->mode;
      lua_assert(sp >= nc->stack+2);
      sp--;

      if ((mode & IRCONV_CONVMASK) == IRCONV_INDEX) {
 if (next == last && irref_isk(narrow_ref(sp[0])) &&
   (uint32_t)IR(narrow_ref(sp[0]))->i + 0x40000000u < 0x80000000u)
   guardot = 0;
 else
   mode += IRCONV_CHECK-IRCONV_INDEX;
      }
      sp[-1] = emitir(op+guardot, sp[-1], sp[0]);

      if (narrow_ref(ref))
 narrow_bpc_set(J, narrow_ref(ref), narrow_ref(sp[-1]), mode);
    }
  }
  lua_assert(sp == nc->stack+1);
  return nc->stack[0];
}
