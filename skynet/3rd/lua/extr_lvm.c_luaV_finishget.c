
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int metatable; } ;
typedef int TValue ;
typedef int StkId ;


 int MAXTAGLOOP ;
 int TM_INDEX ;
 int * fasttm (int *,int ,int ) ;
 TYPE_1__* hvalue (int const*) ;
 int luaG_runerror (int *,char*) ;
 int luaG_typeerror (int *,int const*,char*) ;
 int luaH_get ;
 int luaT_callTM (int *,int const*,int const*,int *,int ,int) ;
 int * luaT_gettmbyobj (int *,int const*,int ) ;
 scalar_t__ luaV_fastget (int *,int const*,int *,int const*,int ) ;
 int lua_assert (int) ;
 int setnilvalue (int ) ;
 int setobj2s (int *,int ,int const*) ;
 scalar_t__ ttisfunction (int const*) ;
 int ttisnil (int const*) ;
 int ttistable (int const*) ;

void luaV_finishget (lua_State *L, const TValue *t, TValue *key, StkId val,
                      const TValue *slot) {
  int loop;
  const TValue *tm;
  for (loop = 0; loop < MAXTAGLOOP; loop++) {
    if (slot == ((void*)0)) {
      lua_assert(!ttistable(t));
      tm = luaT_gettmbyobj(L, t, TM_INDEX);
      if (ttisnil(tm))
        luaG_typeerror(L, t, "index");

    }
    else {
      lua_assert(ttisnil(slot));
      tm = fasttm(L, hvalue(t)->metatable, TM_INDEX);
      if (tm == ((void*)0)) {
        setnilvalue(val);
        return;
      }

    }
    if (ttisfunction(tm)) {
      luaT_callTM(L, tm, t, key, val, 1);
      return;
    }
    t = tm;
    if (luaV_fastget(L,t,key,slot,luaH_get)) {
      setobj2s(L, val, slot);
      return;
    }

  }
  luaG_runerror(L, "'__index' chain too long; possible loop");
}
