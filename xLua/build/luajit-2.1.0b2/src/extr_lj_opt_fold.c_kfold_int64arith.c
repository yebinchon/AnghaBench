
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int IROp ;
 int UNUSED (int ) ;
 int lua_assert (int ) ;

__attribute__((used)) static uint64_t kfold_int64arith(uint64_t k1, uint64_t k2, IROp op)
{
  switch (op) {
  default: UNUSED(k2); lua_assert(0); break;
  }
  return k1;
}
