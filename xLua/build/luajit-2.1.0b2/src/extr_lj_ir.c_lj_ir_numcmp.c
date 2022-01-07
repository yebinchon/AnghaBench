
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;
typedef int IROp ;
 int lua_assert (int ) ;

int lj_ir_numcmp(lua_Number a, lua_Number b, IROp op)
{
  switch (op) {
  case 137: return (a == b);
  case 132: return (a != b);
  case 133: return (a < b);
  case 136: return (a >= b);
  case 134: return (a <= b);
  case 135: return (a > b);
  case 128: return !(a >= b);
  case 131: return !(a < b);
  case 129: return !(a > b);
  case 130: return !(a <= b);
  default: lua_assert(0); return 0;
  }
}
