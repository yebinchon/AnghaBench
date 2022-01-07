
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int jit_State ;
struct TYPE_7__ {int t; int i; int o; } ;
typedef int TRef ;
typedef int IROp ;
typedef TYPE_1__ IRIns ;
 int TREF_NIL ;
 int TREF_PRI (int ) ;
 int ir_kgc (TYPE_1__*) ;
 int ir_kint64 (TYPE_1__*) ;
 int ir_knum (TYPE_1__*) ;
 int ir_kptr (TYPE_1__*) ;
 int irt_t (int ) ;
 int irt_type (int ) ;
 int lj_ir_k64 (int *,int const,int ) ;
 int lj_ir_kgc (int *,int ,int ) ;
 int lj_ir_kint (int *,int ) ;
 int lj_ir_kptr (int *,int ) ;
 int lua_assert (int ) ;

__attribute__((used)) static TRef snap_replay_const(jit_State *J, IRIns *ir)
{

  switch ((IROp)ir->o) {
  case 129: return TREF_PRI(irt_type(ir->t));
  case 132: return lj_ir_kint(J, ir->i);
  case 133: return lj_ir_kgc(J, ir_kgc(ir), irt_t(ir->t));
  case 130: return lj_ir_k64(J, 130, ir_knum(ir));
  case 131: return lj_ir_k64(J, 131, ir_kint64(ir));
  case 128: return lj_ir_kptr(J, ir_kptr(ir));
  default: lua_assert(0); return TREF_NIL; break;
  }
}
