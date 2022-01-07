
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int jit_State ;
typedef int TRef ;


 int IR_KNUM ;
 int lj_ir_k64 (int *,int ,int ) ;

TRef lj_ir_knum_u64(jit_State *J, uint64_t u64)
{
  return lj_ir_k64(J, IR_KNUM, u64);
}
