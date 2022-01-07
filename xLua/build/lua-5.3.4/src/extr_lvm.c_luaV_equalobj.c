
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef scalar_t__ lua_Integer ;
struct TYPE_9__ {int metatable; } ;
struct TYPE_8__ {int metatable; } ;
typedef int TValue ;







 scalar_t__ LUA_TNUMBER ;





 int TM_EQ ;
 int bvalue (int const*) ;
 int eqshrstr (int ,int ) ;
 int * fasttm (TYPE_1__*,int ,int ) ;
 int fltvalue (int const*) ;
 int fvalue (int const*) ;
 int gcvalue (int const*) ;
 TYPE_5__* hvalue (int const*) ;
 int ivalue (int const*) ;
 int l_isfalse (int ) ;
 int luaS_eqlngstr (int ,int ) ;
 int luaT_callTM (TYPE_1__*,int const*,int const*,int const*,int ,int) ;
 int luai_numeq (int ,int ) ;
 int pvalue (int const*) ;
 scalar_t__ tointeger (int const*,scalar_t__*) ;
 int tsvalue (int const*) ;
 scalar_t__ ttnov (int const*) ;
 int ttype (int const*) ;
 TYPE_2__* uvalue (int const*) ;

int luaV_equalobj (lua_State *L, const TValue *t1, const TValue *t2) {
  const TValue *tm;
  if (ttype(t1) != ttype(t2)) {
    if (ttnov(t1) != ttnov(t2) || ttnov(t1) != LUA_TNUMBER)
      return 0;
    else {
      lua_Integer i1, i2;
      return (tointeger(t1, &i1) && tointeger(t2, &i2) && i1 == i2);
    }
  }

  switch (ttype(t1)) {
    case 133: return 1;
    case 131: return (ivalue(t1) == ivalue(t2));
    case 132: return luai_numeq(fltvalue(t1), fltvalue(t2));
    case 137: return bvalue(t1) == bvalue(t2);
    case 135: return pvalue(t1) == pvalue(t2);
    case 136: return fvalue(t1) == fvalue(t2);
    case 130: return eqshrstr(tsvalue(t1), tsvalue(t2));
    case 134: return luaS_eqlngstr(tsvalue(t1), tsvalue(t2));
    case 128: {
      if (uvalue(t1) == uvalue(t2)) return 1;
      else if (L == ((void*)0)) return 0;
      tm = fasttm(L, uvalue(t1)->metatable, TM_EQ);
      if (tm == ((void*)0))
        tm = fasttm(L, uvalue(t2)->metatable, TM_EQ);
      break;
    }
    case 129: {
      if (hvalue(t1) == hvalue(t2)) return 1;
      else if (L == ((void*)0)) return 0;
      tm = fasttm(L, hvalue(t1)->metatable, TM_EQ);
      if (tm == ((void*)0))
        tm = fasttm(L, hvalue(t2)->metatable, TM_EQ);
      break;
    }
    default:
      return gcvalue(t1) == gcvalue(t2);
  }
  if (tm == ((void*)0))
    return 0;
  luaT_callTM(L, tm, t1, t2, L->top, 1);
  return !l_isfalse(L->top);
}
