
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {int extra; } ;
typedef TYPE_1__ TString ;


 int LUA_ENV ;
 int NUM_RESERVED ;
 int cast_byte (int) ;
 int luaC_fix (int *,int ) ;
 TYPE_1__* luaS_new (int *,int ) ;
 TYPE_1__* luaS_newliteral (int *,int ) ;
 int * luaX_tokens ;
 int obj2gco (TYPE_1__*) ;

void luaX_init (lua_State *L) {
  int i;
  TString *e = luaS_newliteral(L, LUA_ENV);
  luaC_fix(L, obj2gco(e));
  for (i=0; i<NUM_RESERVED; i++) {
    TString *ts = luaS_new(L, luaX_tokens[i]);
    luaC_fix(L, obj2gco(ts));
    ts->extra = cast_byte(i+1);
  }
}
