
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {scalar_t__ total; } ;
struct TYPE_5__ {TYPE_1__ gc; int allocd; void* (* allocf ) (int ,void*,scalar_t__,scalar_t__) ;} ;
typedef TYPE_2__ global_State ;
typedef scalar_t__ GCSize ;


 TYPE_2__* G (int *) ;
 int checkptrGC (void*) ;
 int lj_err_mem (int *) ;
 int lua_assert (int) ;
 void* stub1 (int ,void*,scalar_t__,scalar_t__) ;

void *lj_mem_realloc(lua_State *L, void *p, GCSize osz, GCSize nsz)
{
  global_State *g = G(L);
  lua_assert((osz == 0) == (p == ((void*)0)));
  p = g->allocf(g->allocd, p, osz, nsz);
  if (p == ((void*)0) && nsz > 0)
    lj_err_mem(L);
  lua_assert((nsz == 0) == (p == ((void*)0)));
  lua_assert(checkptrGC(p));
  g->gc.total = (g->gc.total - osz) + nsz;
  return p;
}
