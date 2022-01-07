
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct TYPE_16__ {int env; int * top; int * base; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_15__ {int nupvalues; int * upvalue; int env; int gct; } ;
struct TYPE_17__ {TYPE_1__ c; } ;
struct TYPE_14__ {int tmptv; } ;
typedef int TValue ;
typedef TYPE_3__ GCfunc ;


 TYPE_12__* G (TYPE_2__*) ;
 int LJ_TFUNC ;
 int LUA_ENVIRONINDEX ;
 int LUA_GLOBALSINDEX ;
 int LUA_REGISTRYINDEX ;
 int api_check (TYPE_2__*,int) ;
 TYPE_3__* curr_func (TYPE_2__*) ;
 int isluafunc (TYPE_3__*) ;
 int * niltv (TYPE_2__*) ;
 int * registry (TYPE_2__*) ;
 int settabV (TYPE_2__*,int *,int ) ;
 int tabref (int ) ;

__attribute__((used)) static TValue *index2adr(lua_State *L, int idx)
{
  if (idx > 0) {
    TValue *o = L->base + (idx - 1);
    return o < L->top ? o : niltv(L);
  } else if (idx > LUA_REGISTRYINDEX) {
    api_check(L, idx != 0 && -idx <= L->top - L->base);
    return L->top + idx;
  } else if (idx == LUA_GLOBALSINDEX) {
    TValue *o = &G(L)->tmptv;
    settabV(L, o, tabref(L->env));
    return o;
  } else if (idx == LUA_REGISTRYINDEX) {
    return registry(L);
  } else {
    GCfunc *fn = curr_func(L);
    api_check(L, fn->c.gct == ~LJ_TFUNC && !isluafunc(fn));
    if (idx == LUA_ENVIRONINDEX) {
      TValue *o = &G(L)->tmptv;
      settabV(L, o, tabref(fn->c.env));
      return o;
    } else {
      idx = LUA_GLOBALSINDEX - idx;
      return idx <= fn->c.nupvalues ? &fn->c.upvalue[idx-1] : niltv(L);
    }
  }
}
