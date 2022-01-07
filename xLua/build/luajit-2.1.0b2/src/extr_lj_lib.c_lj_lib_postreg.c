
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int top; } ;
typedef TYPE_2__ lua_State ;
typedef int lua_CFunction ;
struct TYPE_11__ {int env; } ;
struct TYPE_13__ {TYPE_1__ c; } ;
typedef int GCtab ;
typedef int GCfunc ;


 TYPE_9__* curr_func (TYPE_2__*) ;
 int lj_gc_anybarriert (TYPE_2__*,int *) ;
 int * lj_lib_pushcf (TYPE_2__*,int ,int) ;
 int lj_str_newz (TYPE_2__*,char const*) ;
 int lj_tab_setstr (TYPE_2__*,int *,int ) ;
 int setfuncV (TYPE_2__*,int ,int *) ;
 int * tabref (int ) ;

int lj_lib_postreg(lua_State *L, lua_CFunction cf, int id, const char *name)
{
  GCfunc *fn = lj_lib_pushcf(L, cf, id);
  GCtab *t = tabref(curr_func(L)->c.env);
  setfuncV(L, lj_tab_setstr(L, t, lj_str_newz(L, name)), fn);
  lj_gc_anybarriert(L, t);
  setfuncV(L, L->top++, fn);
  return 1;
}
