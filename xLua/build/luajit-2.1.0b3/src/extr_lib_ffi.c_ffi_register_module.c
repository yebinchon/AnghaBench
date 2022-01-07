
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ top; } ;
typedef TYPE_1__ lua_State ;
typedef int cTValue ;
typedef int GCtab ;


 char* LUA_FFILIBNAME ;
 int copyTV (TYPE_1__*,int ,scalar_t__) ;
 int lj_gc_anybarriert (TYPE_1__*,int *) ;
 int lj_str_newlit (TYPE_1__*,char*) ;
 int * lj_tab_getstr (int *,int ) ;
 int lj_tab_setstr (TYPE_1__*,int *,int ) ;
 int * registry (TYPE_1__*) ;
 int * tabV (int *) ;
 scalar_t__ tvistab (int *) ;

__attribute__((used)) static void ffi_register_module(lua_State *L)
{
  cTValue *tmp = lj_tab_getstr(tabV(registry(L)), lj_str_newlit(L, "_LOADED"));
  if (tmp && tvistab(tmp)) {
    GCtab *t = tabV(tmp);
    copyTV(L, lj_tab_setstr(L, t, lj_str_newlit(L, LUA_FFILIBNAME)), L->top-1);
    lj_gc_anybarriert(L, t);
  }
}
