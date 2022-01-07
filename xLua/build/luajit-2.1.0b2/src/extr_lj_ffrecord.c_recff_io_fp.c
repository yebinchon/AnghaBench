
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * base; } ;
typedef TYPE_1__ jit_State ;
typedef int int32_t ;
struct TYPE_10__ {int * gcroot; } ;
typedef int TRef ;


 int IRFL_UDATA_FILE ;
 int IRFL_UDATA_UDTYPE ;
 int IRT (int ,int ) ;
 int IRTG (int ,int ) ;
 int IRTGI (int ) ;
 int IRT_PTR ;
 int IRT_U8 ;
 int IRT_UDATA ;
 int IR_EQ ;
 int IR_FLOAD ;
 int IR_NE ;
 int IR_XLOAD ;
 TYPE_7__* J2G (TYPE_1__*) ;
 int LJ_TRERR_BADTYPE ;
 int UDTYPE_IO_FILE ;
 int emitir (int ,int ,int ) ;
 int lj_ir_kint (TYPE_1__*,int ) ;
 int lj_ir_knull (TYPE_1__*,int ) ;
 int lj_ir_kptr (TYPE_1__*,int *) ;
 int lj_trace_err (TYPE_1__*,int ) ;
 int tref_isudata (int ) ;

__attribute__((used)) static TRef recff_io_fp(jit_State *J, TRef *udp, int32_t id)
{
  TRef tr, ud, fp;
  if (id) {
    tr = lj_ir_kptr(J, &J2G(J)->gcroot[id]);
    ud = emitir(IRT(IR_XLOAD, IRT_UDATA), tr, 0);
  } else {
    ud = J->base[0];
    if (!tref_isudata(ud))
      lj_trace_err(J, LJ_TRERR_BADTYPE);
    tr = emitir(IRT(IR_FLOAD, IRT_U8), ud, IRFL_UDATA_UDTYPE);
    emitir(IRTGI(IR_EQ), tr, lj_ir_kint(J, UDTYPE_IO_FILE));
  }
  *udp = ud;
  fp = emitir(IRT(IR_FLOAD, IRT_PTR), ud, IRFL_UDATA_FILE);
  emitir(IRTG(IR_NE, IRT_PTR), fp, lj_ir_knull(J, IRT_PTR));
  return fp;
}
