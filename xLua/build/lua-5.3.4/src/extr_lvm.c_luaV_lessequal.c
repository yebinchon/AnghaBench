
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ci; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_6__ {int callstatus; } ;
typedef int TValue ;


 int CIST_LEQ ;
 int LEnum (int const*,int const*) ;
 int TM_LE ;
 int TM_LT ;
 scalar_t__ l_strcmp (int ,int ) ;
 int luaG_ordererror (TYPE_2__*,int const*,int const*) ;
 int luaT_callorderTM (TYPE_2__*,int const*,int const*,int ) ;
 int tsvalue (int const*) ;
 scalar_t__ ttisnumber (int const*) ;
 scalar_t__ ttisstring (int const*) ;

int luaV_lessequal (lua_State *L, const TValue *l, const TValue *r) {
  int res;
  if (ttisnumber(l) && ttisnumber(r))
    return LEnum(l, r);
  else if (ttisstring(l) && ttisstring(r))
    return l_strcmp(tsvalue(l), tsvalue(r)) <= 0;
  else if ((res = luaT_callorderTM(L, l, r, TM_LE)) >= 0)
    return res;
  else {
    L->ci->callstatus |= CIST_LEQ;
    res = luaT_callorderTM(L, r, l, TM_LT);
    L->ci->callstatus ^= CIST_LEQ;
    if (res < 0)
      luaG_ordererror(L, l, r);
    return !res;
  }
}
