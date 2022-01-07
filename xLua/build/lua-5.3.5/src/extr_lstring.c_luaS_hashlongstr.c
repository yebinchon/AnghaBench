
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lnglen; } ;
struct TYPE_6__ {scalar_t__ tt; int extra; unsigned int hash; TYPE_1__ u; } ;
typedef TYPE_2__ TString ;


 scalar_t__ LUA_TLNGSTR ;
 int getstr (TYPE_2__*) ;
 unsigned int luaS_hash (int ,int ,unsigned int) ;
 int lua_assert (int) ;

unsigned int luaS_hashlongstr (TString *ts) {
  lua_assert(ts->tt == LUA_TLNGSTR);
  if (ts->extra == 0) {
    ts->hash = luaS_hash(getstr(ts), ts->u.lnglen, ts->hash);
    ts->extra = 1;
  }
  return ts->hash;
}
