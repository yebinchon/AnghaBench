
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int jit_State ;
typedef int int32_t ;
struct TYPE_4__ {scalar_t__ ctypeid; } ;
typedef int TRef ;
typedef TYPE_1__ GCcdata ;
typedef scalar_t__ CTypeID ;


 scalar_t__ CTID_CTYPEID ;
 int IRFL_CDATA_INT ;
 int IRT (int ,int ) ;
 int IRTG (int ,int ) ;
 int IRT_INT ;
 int IR_EQ ;
 int IR_FLOAD ;
 scalar_t__ cdataptr (TYPE_1__*) ;
 int emitir (int ,int ,int ) ;
 int lj_ir_kint (int *,int ) ;
 int lua_assert (int) ;
 scalar_t__ tref_iscdata (int ) ;

__attribute__((used)) static CTypeID crec_constructor(jit_State *J, GCcdata *cd, TRef tr)
{
  CTypeID id;
  lua_assert(tref_iscdata(tr) && cd->ctypeid == CTID_CTYPEID);
  id = *(CTypeID *)cdataptr(cd);
  tr = emitir(IRT(IR_FLOAD, IRT_INT), tr, IRFL_CDATA_INT);
  emitir(IRTG(IR_EQ, IRT_INT), tr, lj_ir_kint(J, (int32_t)id));
  return id;
}
