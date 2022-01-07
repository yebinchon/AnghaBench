
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int jit_State ;
typedef int int32_t ;
struct TYPE_2__ {int op2; int o; } ;
typedef int TRef ;


 int IR_BSHL ;
 int LEFTFOLD ;
 int NEXTFOLD ;
 int RETRYFOLD ;
 int RIGHTFOLD ;
 TYPE_1__* fins ;
 int lj_fls (int ) ;
 int lj_ir_kint (int *,int ) ;

__attribute__((used)) static TRef simplify_intmul_k(jit_State *J, int32_t k)
{




  if (k == 0) {
    return RIGHTFOLD;
  } else if (k == 1) {
    return LEFTFOLD;
  } else if ((k & (k-1)) == 0) {
    fins->o = IR_BSHL;
    fins->op2 = lj_ir_kint(J, lj_fls((uint32_t)k));
    return RETRYFOLD;
  }
  return NEXTFOLD;
}
