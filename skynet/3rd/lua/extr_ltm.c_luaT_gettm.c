
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ Table ;
typedef int TValue ;
typedef int TString ;
typedef unsigned int TMS ;


 unsigned int TM_EQ ;
 int cast_byte (unsigned int) ;
 int * luaH_getshortstr (TYPE_1__*,int *) ;
 int lua_assert (int) ;
 scalar_t__ ttisnil (int const*) ;

const TValue *luaT_gettm (Table *events, TMS event, TString *ename) {
  const TValue *tm = luaH_getshortstr(events, ename);
  lua_assert(event <= TM_EQ);
  if (ttisnil(tm)) {
    events->flags |= cast_byte(1u<<event);
    return ((void*)0);
  }
  else return tm;
}
