
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IROp ;
typedef int GCstr ;






 int lj_str_cmp (int *,int *) ;
 int lua_assert (int ) ;

int lj_ir_strcmp(GCstr *a, GCstr *b, IROp op)
{
  int res = lj_str_cmp(a, b);
  switch (op) {
  case 128: return (res < 0);
  case 131: return (res >= 0);
  case 129: return (res <= 0);
  case 130: return (res > 0);
  default: lua_assert(0); return 0;
  }
}
