
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_Number ;
struct TYPE_6__ {int nval; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
typedef TYPE_2__ expdesc ;
typedef int OpCode ;
 int isnumeral (TYPE_2__*) ;
 int lua_assert (int ) ;
 int luai_numadd (int ,int ) ;
 int luai_numdiv (int ,int ) ;
 scalar_t__ luai_numisnan (int ) ;
 int luai_nummod (int ,int ) ;
 int luai_nummul (int ,int ) ;
 int luai_numpow (int ,int ) ;
 int luai_numsub (int ,int ) ;
 int luai_numunm (int ) ;

__attribute__((used)) static int constfolding (OpCode op, expdesc *e1, expdesc *e2) {
  lua_Number v1, v2, r;
  if (!isnumeral(e1) || !isnumeral(e2)) return 0;
  v1 = e1->u.nval;
  v2 = e2->u.nval;
  switch (op) {
    case 135: r = luai_numadd(v1, v2); break;
    case 129: r = luai_numsub(v1, v2); break;
    case 131: r = luai_nummul(v1, v2); break;
    case 134:
      if (v2 == 0) return 0;
      r = luai_numdiv(v1, v2); break;
    case 132:
      if (v2 == 0) return 0;
      r = luai_nummod(v1, v2); break;
    case 130: r = luai_numpow(v1, v2); break;
    case 128: r = luai_numunm(v1); break;
    case 133: return 0;
    default: lua_assert(0); r = 0; break;
  }
  if (luai_numisnan(r)) return 0;
  e1->u.nval = r;
  return 1;
}
