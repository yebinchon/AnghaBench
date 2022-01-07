
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uvhead; } ;
typedef TYPE_1__ global_State ;
typedef int GCupval ;


 int gc_marktv (TYPE_1__*,int ) ;
 scalar_t__ isgray (int ) ;
 int lua_assert (int) ;
 int obj2gco (int *) ;
 int * uvnext (int *) ;
 int * uvprev (int *) ;
 int uvval (int *) ;

__attribute__((used)) static void gc_mark_uv(global_State *g)
{
  GCupval *uv;
  for (uv = uvnext(&g->uvhead); uv != &g->uvhead; uv = uvnext(uv)) {
    lua_assert(uvprev(uvnext(uv)) == uv && uvnext(uvprev(uv)) == uv);
    if (isgray(obj2gco(uv)))
      gc_marktv(g, uvval(uv));
  }
}
