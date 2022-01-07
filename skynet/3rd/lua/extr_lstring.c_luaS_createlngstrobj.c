
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {size_t lnglen; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ TString ;


 int LUA_TLNGSTR ;
 int STRSEED ;
 TYPE_2__* createstrobj (int *,size_t,int ,int ) ;

TString *luaS_createlngstrobj (lua_State *L, size_t l) {
  TString *ts = createstrobj(L, l, LUA_TLNGSTR, STRSEED);
  ts->u.lnglen = l;
  return ts;
}
