
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ lu_byte ;
struct TYPE_5__ {scalar_t__ shrlen; scalar_t__ tt; scalar_t__ id; } ;
typedef TYPE_1__ TString ;


 scalar_t__ LUA_TSHRSTR ;
 int getstr (TYPE_1__*) ;
 int lua_assert (int) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

int luaS_eqshrstr (TString *a, TString *b) {
  lu_byte len = a->shrlen;
  lua_assert(b->tt == LUA_TSHRSTR);
  int r = len == b->shrlen && (memcmp(getstr(a), getstr(b), len) == 0);
  if (r) {
    if (a->id < b->id) {
      a->id = b->id;
    } else {
      b->id = a->id;
    }
  }
  return r;
}
