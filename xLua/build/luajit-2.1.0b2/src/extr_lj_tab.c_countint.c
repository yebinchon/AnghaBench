
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ lua_Number ;
typedef int int32_t ;
typedef int cTValue ;


 scalar_t__ LJ_MAX_ASIZE ;
 size_t lj_fls (scalar_t__) ;
 int lj_num2int (scalar_t__) ;
 int lua_assert (int) ;
 scalar_t__ numV (int *) ;
 int tvisint (int *) ;
 scalar_t__ tvisnum (int *) ;

__attribute__((used)) static uint32_t countint(cTValue *key, uint32_t *bins)
{
  lua_assert(!tvisint(key));
  if (tvisnum(key)) {
    lua_Number nk = numV(key);
    int32_t k = lj_num2int(nk);
    if ((uint32_t)k < LJ_MAX_ASIZE && nk == (lua_Number)k) {
      bins[(k > 2 ? lj_fls((uint32_t)(k-1)) : 0)]++;
      return 1;
    }
  }
  return 0;
}
