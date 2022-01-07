
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
typedef int lua_State ;
struct TYPE_11__ {int u64; } ;
struct TYPE_10__ {int n; } ;
struct TYPE_9__ {int o; int t; int i; } ;
typedef int TValue ;
typedef TYPE_1__ IRIns ;
typedef int GCcdata ;


 int CTID_INT64 ;
 int IR_KSLOT ;
 int UNUSED (int *) ;
 scalar_t__ cdataptr (int *) ;
 int ir_kgc (TYPE_1__ const*) ;
 TYPE_6__* ir_kint64 (TYPE_1__ const*) ;
 TYPE_4__* ir_knum (TYPE_1__ const*) ;
 int * ir_kptr (TYPE_1__ const*) ;
 int irt_toitype (int ) ;
 int * lj_cdata_new_ (int *,int ,int) ;
 int lua_assert (int) ;
 int setcdataV (int *,int *,int *) ;
 int setgcV (int *,int *,int ,int ) ;
 int setintV (int *,int ) ;
 int setlightudV (int *,int *) ;
 int setnumV (int *,int ) ;
 int setpriV (int *,int ) ;

void lj_ir_kvalue(lua_State *L, TValue *tv, const IRIns *ir)
{
  UNUSED(L);
  lua_assert(ir->o != IR_KSLOT);
  switch (ir->o) {
  case 129: setpriV(tv, irt_toitype(ir->t)); break;
  case 134: setintV(tv, ir->i); break;
  case 135: setgcV(L, tv, ir_kgc(ir), irt_toitype(ir->t)); break;
  case 128: case 132: setlightudV(tv, ir_kptr(ir)); break;
  case 131: setlightudV(tv, ((void*)0)); break;
  case 130: setnumV(tv, ir_knum(ir)->n); break;
  default: lua_assert(0); break;
  }
}
