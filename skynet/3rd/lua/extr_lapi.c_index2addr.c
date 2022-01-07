
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * top; TYPE_2__* ci; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_12__ {int l_registry; } ;
struct TYPE_11__ {int nupvalues; int * upvalue; } ;
struct TYPE_10__ {int * func; int * top; } ;
typedef int TValue ;
typedef TYPE_2__ CallInfo ;
typedef TYPE_3__ CClosure ;


 TYPE_7__* G (TYPE_1__*) ;
 int LUA_REGISTRYINDEX ;
 int MAXUPVAL ;
 int * NONVALIDVALUE ;
 int api_check (TYPE_1__*,int,char*) ;
 TYPE_3__* clCvalue (int *) ;
 int ispseudo (int) ;
 scalar_t__ ttislcf (int *) ;

__attribute__((used)) static TValue *index2addr (lua_State *L, int idx) {
  CallInfo *ci = L->ci;
  if (idx > 0) {
    TValue *o = ci->func + idx;
    api_check(L, idx <= ci->top - (ci->func + 1), "unacceptable index");
    if (o >= L->top) return NONVALIDVALUE;
    else return o;
  }
  else if (!ispseudo(idx)) {
    api_check(L, idx != 0 && -idx <= L->top - (ci->func + 1), "invalid index");
    return L->top + idx;
  }
  else if (idx == LUA_REGISTRYINDEX)
    return &G(L)->l_registry;
  else {
    idx = LUA_REGISTRYINDEX - idx;
    api_check(L, idx <= MAXUPVAL + 1, "upvalue index too large");
    if (ttislcf(ci->func))
      return NONVALIDVALUE;
    else {
      CClosure *func = clCvalue(ci->func);
      return (idx <= func->nupvalues) ? &func->upvalue[idx-1] : NONVALIDVALUE;
    }
  }
}
