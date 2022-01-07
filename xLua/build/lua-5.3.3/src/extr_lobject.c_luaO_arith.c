
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;
typedef int lua_Integer ;
typedef int TValue ;


 int LUA_OPADD ;
 int TMS ;
 int TM_ADD ;
 int cast (int ,int) ;
 int intarith (int *,int,int ,int ) ;
 int ivalue (int const*) ;
 int luaT_trybinTM (int *,int const*,int const*,int *,int ) ;
 int lua_assert (int ) ;
 int numarith (int *,int,int ,int ) ;
 int setfltvalue (int *,int ) ;
 int setivalue (int *,int ) ;
 int tointeger (int const*,int *) ;
 int tonumber (int const*,int *) ;
 int ttisinteger (int const*) ;

void luaO_arith (lua_State *L, int op, const TValue *p1, const TValue *p2,
                 TValue *res) {
  switch (op) {
    case 135: case 133: case 132:
    case 129: case 128:
    case 134: {
      lua_Integer i1; lua_Integer i2;
      if (tointeger(p1, &i1) && tointeger(p2, &i2)) {
        setivalue(res, intarith(L, op, i1, i2));
        return;
      }
      else break;
    }
    case 131: case 130: {
      lua_Number n1; lua_Number n2;
      if (tonumber(p1, &n1) && tonumber(p2, &n2)) {
        setfltvalue(res, numarith(L, op, n1, n2));
        return;
      }
      else break;
    }
    default: {
      lua_Number n1; lua_Number n2;
      if (ttisinteger(p1) && ttisinteger(p2)) {
        setivalue(res, intarith(L, op, ivalue(p1), ivalue(p2)));
        return;
      }
      else if (tonumber(p1, &n1) && tonumber(p2, &n2)) {
        setfltvalue(res, numarith(L, op, n1, n2));
        return;
      }
      else break;
    }
  }

  lua_assert(L != ((void*)0));
  luaT_trybinTM(L, p1, p2, res, cast(TMS, (op - LUA_OPADD) + TM_ADD));
}
