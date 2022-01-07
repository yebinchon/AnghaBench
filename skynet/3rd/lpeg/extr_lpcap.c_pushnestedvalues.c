
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* cap; int L; } ;
struct TYPE_6__ {scalar_t__ s; scalar_t__ siz; } ;
typedef TYPE_1__ Capture ;
typedef TYPE_2__ CapState ;


 int isclosecap (TYPE_1__*) ;
 scalar_t__ isfullcap (int ) ;
 int lua_pushlstring (int ,scalar_t__,scalar_t__) ;
 scalar_t__ pushcapture (TYPE_2__*) ;

__attribute__((used)) static int pushnestedvalues (CapState *cs, int addextra) {
  Capture *co = cs->cap;
  if (isfullcap(cs->cap++)) {
    lua_pushlstring(cs->L, co->s, co->siz - 1);
    return 1;
  }
  else {
    int n = 0;
    while (!isclosecap(cs->cap))
      n += pushcapture(cs);
    if (addextra || n == 0) {
      lua_pushlstring(cs->L, co->s, cs->cap->s - co->s);
      n++;
    }
    cs->cap++;
    return n;
  }
}
