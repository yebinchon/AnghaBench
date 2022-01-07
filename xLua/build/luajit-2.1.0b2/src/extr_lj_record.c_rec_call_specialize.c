
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int jit_State ;
struct TYPE_11__ {int ffid; } ;
struct TYPE_13__ {TYPE_1__ c; } ;
struct TYPE_12__ {scalar_t__ flags; } ;
typedef int TRef ;
typedef TYPE_2__ GCproto ;
typedef TYPE_3__ GCfunc ;




 int IRFL_FUNC_FFID ;
 int IRFL_FUNC_PC ;
 int IRT (int ,int ) ;
 int IRTG (int ,int ) ;
 int IRT_FUNC ;
 int IRT_INT ;
 int IRT_P32 ;
 int IRT_PROTO ;
 int IRT_U8 ;
 int IR_EQ ;
 int IR_FLOAD ;
 scalar_t__ PROTO_CLC_POLY ;
 int emitir (int ,int ,int ) ;
 TYPE_2__* funcproto (TYPE_3__*) ;
 scalar_t__ isluafunc (TYPE_3__*) ;
 int lj_ir_kfunc (int *,TYPE_3__*) ;
 int lj_ir_kgc (int *,int ,int ) ;
 int lj_ir_kint (int *,int) ;
 int lj_ir_kptr (int *,int ) ;
 int obj2gco (TYPE_2__*) ;
 int proto_bc (TYPE_2__*) ;

__attribute__((used)) static TRef rec_call_specialize(jit_State *J, GCfunc *fn, TRef tr)
{
  TRef kfunc;
  if (isluafunc(fn)) {
    GCproto *pt = funcproto(fn);

    if (pt->flags >= PROTO_CLC_POLY) {
      TRef trpt = emitir(IRT(IR_FLOAD, IRT_P32), tr, IRFL_FUNC_PC);
      emitir(IRTG(IR_EQ, IRT_P32), trpt, lj_ir_kptr(J, proto_bc(pt)));
      (void)lj_ir_kgc(J, obj2gco(pt), IRT_PROTO);
      return tr;
    }
  } else {

    switch (fn->c.ffid) {
    case 129:
    case 128:

      {
 TRef trid = emitir(IRT(IR_FLOAD, IRT_U8), tr, IRFL_FUNC_FFID);
 emitir(IRTG(IR_EQ, IRT_INT), trid, lj_ir_kint(J, fn->c.ffid));
      }
      return tr;
    default:

      break;
    }
  }

  kfunc = lj_ir_kfunc(J, fn);
  emitir(IRTG(IR_EQ, IRT_FUNC), tr, kfunc);
  return kfunc;
}
