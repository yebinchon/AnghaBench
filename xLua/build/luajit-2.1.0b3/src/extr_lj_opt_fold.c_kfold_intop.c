
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;
typedef int IROp ;
 int lj_rol (int,int) ;
 int lj_ror (int,int) ;
 int lj_vm_modi (int,int) ;
 int lua_assert (int ) ;

__attribute__((used)) static int32_t kfold_intop(int32_t k1, int32_t k2, IROp op)
{
  switch (op) {
  case 142: k1 += k2; break;
  case 128: k1 -= k2; break;
  case 130: k1 *= k2; break;
  case 131: k1 = lj_vm_modi(k1, k2); break;
  case 129: k1 = -k1; break;
  case 141: k1 &= k2; break;
  case 140: k1 |= k2; break;
  case 134: k1 ^= k2; break;
  case 136: k1 <<= (k2 & 31); break;
  case 135: k1 = (int32_t)((uint32_t)k1 >> (k2 & 31)); break;
  case 137: k1 >>= (k2 & 31); break;
  case 139: k1 = (int32_t)lj_rol((uint32_t)k1, (k2 & 31)); break;
  case 138: k1 = (int32_t)lj_ror((uint32_t)k1, (k2 & 31)); break;
  case 132: k1 = k1 < k2 ? k1 : k2; break;
  case 133: k1 = k1 > k2 ? k1 : k2; break;
  default: lua_assert(0); break;
  }
  return k1;
}
