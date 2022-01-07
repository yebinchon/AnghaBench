
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ lua_Number ;
typedef scalar_t__ int32_t ;
struct TYPE_4__ {scalar_t__ hi; } ;
struct TYPE_5__ {TYPE_1__ u32; } ;
typedef TYPE_2__ TValue ;


 scalar_t__ lj_num2int (scalar_t__) ;
 int setnumV (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static int numistrueint(lua_Number n, int32_t *kp)
{
  int32_t k = lj_num2int(n);
  if (n == (lua_Number)k) {
    if (kp) *kp = k;
    if (k == 0) {
      TValue tv;
      setnumV(&tv, n);
      if (tv.u32.hi != 0)
 return 0;
    }
    return 1;
  }
  return 0;
}
