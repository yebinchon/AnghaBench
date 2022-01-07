
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ top; int allowhook; TYPE_1__* ci; } ;
typedef TYPE_2__ lua_State ;
typedef int lu_byte ;
struct TYPE_17__ {int gcrunning; } ;
typedef TYPE_3__ global_State ;
struct TYPE_15__ {int callstatus; } ;
typedef int const TValue ;


 int CIST_FIN ;
 TYPE_3__* G (TYPE_2__*) ;
 int LUA_ERRGCMM ;
 int LUA_ERRRUN ;
 int LUA_OK ;
 int TM_GC ;
 int dothecall ;
 int luaD_pcall (TYPE_2__*,int ,int *,int ,int ) ;
 int luaD_throw (TYPE_2__*,int) ;
 int luaO_pushfstring (TYPE_2__*,char*,char const*) ;
 int const* luaT_gettmbyobj (TYPE_2__*,int const*,int ) ;
 int savestack (TYPE_2__*,scalar_t__) ;
 int setgcovalue (TYPE_2__*,int const*,int ) ;
 int setobj2s (TYPE_2__*,scalar_t__,int const*) ;
 char* svalue (scalar_t__) ;
 scalar_t__ ttisfunction (int const*) ;
 scalar_t__ ttisstring (scalar_t__) ;
 int udata2finalize (TYPE_3__*) ;

__attribute__((used)) static void GCTM (lua_State *L, int propagateerrors) {
  global_State *g = G(L);
  const TValue *tm;
  TValue v;
  setgcovalue(L, &v, udata2finalize(g));
  tm = luaT_gettmbyobj(L, &v, TM_GC);
  if (tm != ((void*)0) && ttisfunction(tm)) {
    int status;
    lu_byte oldah = L->allowhook;
    int running = g->gcrunning;
    L->allowhook = 0;
    g->gcrunning = 0;
    setobj2s(L, L->top, tm);
    setobj2s(L, L->top + 1, &v);
    L->top += 2;
    L->ci->callstatus |= CIST_FIN;
    status = luaD_pcall(L, dothecall, ((void*)0), savestack(L, L->top - 2), 0);
    L->ci->callstatus &= ~CIST_FIN;
    L->allowhook = oldah;
    g->gcrunning = running;
    if (status != LUA_OK && propagateerrors) {
      if (status == LUA_ERRRUN) {
        const char *msg = (ttisstring(L->top - 1))
                            ? svalue(L->top - 1)
                            : "no message";
        luaO_pushfstring(L, "error in __gc metamethod (%s)", msg);
        status = LUA_ERRGCMM;
      }
      luaD_throw(L, status);
    }
  }
}
