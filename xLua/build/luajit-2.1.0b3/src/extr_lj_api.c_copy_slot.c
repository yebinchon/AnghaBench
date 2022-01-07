
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int env; } ;
typedef TYPE_2__ lua_State ;
struct TYPE_14__ {int env; int gct; } ;
struct TYPE_16__ {TYPE_1__ c; } ;
typedef int TValue ;
typedef TYPE_3__ GCfunc ;


 int LJ_ERR_NOENV ;
 int LJ_TFUNC ;
 int LUA_ENVIRONINDEX ;
 int LUA_GLOBALSINDEX ;
 int api_check (TYPE_2__*,int ) ;
 int api_checkvalidindex (TYPE_2__*,int *) ;
 int copyTV (TYPE_2__*,int *,int *) ;
 TYPE_3__* curr_func (TYPE_2__*) ;
 int * index2adr (TYPE_2__*,int) ;
 int lj_err_msg (TYPE_2__*,int ) ;
 int lj_gc_barrier (TYPE_2__*,TYPE_3__*,int *) ;
 int obj2gco (int ) ;
 int setgcref (int ,int ) ;
 int tabV (int *) ;
 int tvistab (int *) ;

__attribute__((used)) static void copy_slot(lua_State *L, TValue *f, int idx)
{
  if (idx == LUA_GLOBALSINDEX) {
    api_check(L, tvistab(f));

    setgcref(L->env, obj2gco(tabV(f)));
  } else if (idx == LUA_ENVIRONINDEX) {
    GCfunc *fn = curr_func(L);
    if (fn->c.gct != ~LJ_TFUNC)
      lj_err_msg(L, LJ_ERR_NOENV);
    api_check(L, tvistab(f));
    setgcref(fn->c.env, obj2gco(tabV(f)));
    lj_gc_barrier(L, fn, f);
  } else {
    TValue *o = index2adr(L, idx);
    api_checkvalidindex(L, o);
    copyTV(L, o, f);
    if (idx < LUA_GLOBALSINDEX)
      lj_gc_barrier(L, curr_func(L), f);
  }
}
