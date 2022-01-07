
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ lua_Number ;
typedef scalar_t__ int32_t ;
struct TYPE_7__ {int nval; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef int TValue ;
typedef TYPE_2__ ExpDesc ;
typedef scalar_t__ BinOpr ;


 scalar_t__ LJ_DUALNUM ;
 scalar_t__ OPR_ADD ;
 int expr_isnumk_nojump (TYPE_2__*) ;
 int expr_numberV (TYPE_2__*) ;
 scalar_t__ lj_num2int (scalar_t__) ;
 scalar_t__ lj_vm_foldarith (int ,int ,scalar_t__) ;
 int setintV (int *,scalar_t__) ;
 int setnumV (int *,scalar_t__) ;
 scalar_t__ tvismzero (int *) ;
 scalar_t__ tvisnan (int *) ;

__attribute__((used)) static int foldarith(BinOpr opr, ExpDesc *e1, ExpDesc *e2)
{
  TValue o;
  lua_Number n;
  if (!expr_isnumk_nojump(e1) || !expr_isnumk_nojump(e2)) return 0;
  n = lj_vm_foldarith(expr_numberV(e1), expr_numberV(e2), (int)opr-OPR_ADD);
  setnumV(&o, n);
  if (tvisnan(&o) || tvismzero(&o)) return 0;
  if (LJ_DUALNUM) {
    int32_t k = lj_num2int(n);
    if ((lua_Number)k == n) {
      setintV(&e1->u.nval, k);
      return 1;
    }
  }
  setnumV(&e1->u.nval, n);
  return 1;
}
