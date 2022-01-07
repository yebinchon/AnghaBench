
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef void* lua_CFunction ;
typedef int TValue ;


 int UNUSED (void*) ;
 int lj_gc_finalize_cdata (int *) ;
 int lj_gc_finalize_udata (int *) ;

__attribute__((used)) static TValue *cpfinalize(lua_State *L, lua_CFunction dummy, void *ud)
{
  UNUSED(dummy);
  UNUSED(ud);
  lj_gc_finalize_cdata(L);
  lj_gc_finalize_udata(L);

  return ((void*)0);
}
