
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {int reserved; } ;
struct TYPE_6__ {TYPE_1__ tsv; } ;
typedef TYPE_2__ TString ;


 int NUM_RESERVED ;
 scalar_t__ TOKEN_LEN ;
 int cast_byte (int) ;
 int luaS_fix (TYPE_2__*) ;
 TYPE_2__* luaS_new (int *,int ) ;
 int * luaX_tokens ;
 int lua_assert (int) ;
 scalar_t__ strlen (int ) ;

void luaX_init (lua_State *L) {
  int i;
  for (i=0; i<NUM_RESERVED; i++) {
    TString *ts = luaS_new(L, luaX_tokens[i]);
    luaS_fix(ts);
    lua_assert(strlen(luaX_tokens[i])+1 <= TOKEN_LEN);
    ts->tsv.reserved = cast_byte(i+1);
  }
}
