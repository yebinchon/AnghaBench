
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ lua_Number ;
struct TYPE_10__ {scalar_t__ nval; int ival; } ;
struct TYPE_11__ {TYPE_2__ u; int k; } ;
typedef TYPE_3__ expdesc ;
struct TYPE_12__ {TYPE_1__* ls; } ;
struct TYPE_9__ {int L; } ;
typedef int TValue ;
typedef TYPE_4__ FuncState ;


 int VKFLT ;
 int VKINT ;
 scalar_t__ fltvalue (int *) ;
 int ivalue (int *) ;
 int luaO_arith (int ,int,int *,int *,int *) ;
 scalar_t__ luai_numisnan (scalar_t__) ;
 int tonumeral (TYPE_3__*,int *) ;
 scalar_t__ ttisinteger (int *) ;
 int validop (int,int *,int *) ;

__attribute__((used)) static int constfolding (FuncState *fs, int op, expdesc *e1, expdesc *e2) {
  TValue v1, v2, res;
  if (!tonumeral(e1, &v1) || !tonumeral(e2, &v2) || !validop(op, &v1, &v2))
    return 0;
  luaO_arith(fs->ls->L, op, &v1, &v2, &res);
  if (ttisinteger(&res)) {
    e1->k = VKINT;
    e1->u.ival = ivalue(&res);
  }
  else {
    lua_Number n = fltvalue(&res);
    if (luai_numisnan(n) || n == 0)
      return 0;
    e1->k = VKFLT;
    e1->u.nval = n;
  }
  return 1;
}
