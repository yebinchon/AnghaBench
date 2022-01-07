
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int env; } ;
typedef TYPE_2__ lua_State ;
typedef void* lua_CFunction ;
struct TYPE_17__ {int threshold; int total; } ;
struct TYPE_19__ {TYPE_1__ gc; } ;
typedef TYPE_3__ global_State ;
typedef int TValue ;


 TYPE_3__* G (TYPE_2__*) ;
 int LJ_ERR_ERRMEM ;
 int LJ_MIN_GLOBAL ;
 int LJ_MIN_REGISTRY ;
 scalar_t__ LJ_MIN_STRTAB ;
 int UNUSED (void*) ;
 int fixstring (int ) ;
 int lj_err_str (TYPE_2__*,int ) ;
 int lj_lex_init (TYPE_2__*) ;
 int lj_meta_init (TYPE_2__*) ;
 int lj_str_resize (TYPE_2__*,scalar_t__) ;
 int lj_tab_new (TYPE_2__*,int ,int ) ;
 int lj_trace_initstate (TYPE_3__*) ;
 int obj2gco (int ) ;
 int registry (TYPE_2__*) ;
 int setgcref (int ,int ) ;
 int settabV (TYPE_2__*,int ,int ) ;
 int stack_init (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static TValue *cpluaopen(lua_State *L, lua_CFunction dummy, void *ud)
{
  global_State *g = G(L);
  UNUSED(dummy);
  UNUSED(ud);
  stack_init(L, L);

  setgcref(L->env, obj2gco(lj_tab_new(L, 0, LJ_MIN_GLOBAL)));
  settabV(L, registry(L), lj_tab_new(L, 0, LJ_MIN_REGISTRY));
  lj_str_resize(L, LJ_MIN_STRTAB-1);
  lj_meta_init(L);
  lj_lex_init(L);
  fixstring(lj_err_str(L, LJ_ERR_ERRMEM));
  g->gc.threshold = 4*g->gc.total;
  lj_trace_initstate(g);
  return ((void*)0);
}
