
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
typedef int jit_State ;
typedef int int8_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_3__ {int t; } ;
typedef int TRef ;
typedef TYPE_1__ IRIns ;
 int irt_type (int ) ;
 int lj_getu16 (void const*) ;
 int lj_getu32 (void const*) ;
 int lj_ir_kint (int *,int ) ;
 int lj_ir_kint64 (int *,int ) ;
 int lj_ir_knum_u64 (int *,int ) ;

__attribute__((used)) static TRef kfold_xload(jit_State *J, IRIns *ir, const void *p)
{
  int32_t k;
  switch (irt_type(ir->t)) {
  case 132: return lj_ir_knum_u64(J, *(uint64_t *)p);
  case 134: k = (int32_t)*(int8_t *)p; break;
  case 128: k = (int32_t)*(uint8_t *)p; break;
  case 136: k = (int32_t)(int16_t)lj_getu16(p); break;
  case 131: k = (int32_t)(uint16_t)lj_getu16(p); break;
  case 133: case 130: k = (int32_t)lj_getu32(p); break;
  case 135: case 129: return lj_ir_kint64(J, *(uint64_t *)p);
  default: return 0;
  }
  return lj_ir_kint(J, k);
}
