
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ptrdiff_t ;
struct TYPE_4__ {int * gcroot; } ;
typedef TYPE_1__ global_State ;


 size_t GCROOT_MAX ;
 int gc_markobj (TYPE_1__*,int *) ;
 int * gcref (int ) ;

__attribute__((used)) static void gc_mark_gcroot(global_State *g)
{
  ptrdiff_t i;
  for (i = 0; i < GCROOT_MAX; i++)
    if (gcref(g->gcroot[i]) != ((void*)0))
      gc_markobj(g, gcref(g->gcroot[i]));
}
