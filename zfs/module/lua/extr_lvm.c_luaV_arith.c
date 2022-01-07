
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;
typedef int TValue ;
typedef int TMS ;
typedef int StkId ;


 int LUA_OPADD ;
 int LUA_OPDIV ;
 int LUA_OPMOD ;
 int TM_ADD ;
 int call_binTM (int *,int const*,int const*,int ,int) ;
 int luaG_aritherror (int *,int const*,int const*) ;
 int luaO_arith (int,int ,int ) ;
 int luaV_div (int *,int ,int ) ;
 int luaV_mod (int *,int ,int ) ;
 int * luaV_tonumber (int const*,int *) ;
 int nvalue (int const*) ;
 int setnvalue (int ,int ) ;

void luaV_arith (lua_State *L, StkId ra, const TValue *rb,
                 const TValue *rc, TMS op) {
  TValue tempb, tempc;
  const TValue *b, *c;
  if ((b = luaV_tonumber(rb, &tempb)) != ((void*)0) &&
      (c = luaV_tonumber(rc, &tempc)) != ((void*)0)) {



    lua_Number res;
    int lop = op - TM_ADD + LUA_OPADD;
    if (lop == LUA_OPDIV) {
      res = luaV_div(L, nvalue(b), nvalue(c));
    } else if (lop == LUA_OPMOD) {
      res = luaV_mod(L, nvalue(b), nvalue(c));
    } else {
      res = luaO_arith(op - TM_ADD + LUA_OPADD, nvalue(b), nvalue(c));
    }
    setnvalue(ra, res);
  }
  else if (!call_binTM(L, rb, rc, ra, op))
    luaG_aritherror(L, rb, rc);
}
