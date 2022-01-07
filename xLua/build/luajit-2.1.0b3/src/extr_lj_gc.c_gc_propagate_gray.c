
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int gray; } ;
struct TYPE_6__ {TYPE_1__ gc; } ;
typedef TYPE_2__ global_State ;


 int * gcref (int ) ;
 scalar_t__ propagatemark (TYPE_2__*) ;

__attribute__((used)) static size_t gc_propagate_gray(global_State *g)
{
  size_t m = 0;
  while (gcref(g->gc.gray) != ((void*)0))
    m += propagatemark(g);
  return m;
}
