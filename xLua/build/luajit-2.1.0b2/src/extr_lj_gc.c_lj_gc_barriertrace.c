
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ state; } ;
struct TYPE_6__ {TYPE_1__ gc; } ;
typedef TYPE_2__ global_State ;


 scalar_t__ GCSatomic ;
 scalar_t__ GCSpropagate ;
 int gc_marktrace (TYPE_2__*,int ) ;

void lj_gc_barriertrace(global_State *g, uint32_t traceno)
{
  if (g->gc.state == GCSpropagate || g->gc.state == GCSatomic)
    gc_marktrace(g, traceno);
}
