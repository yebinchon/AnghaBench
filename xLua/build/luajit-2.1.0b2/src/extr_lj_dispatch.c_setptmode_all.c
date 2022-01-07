
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ptrdiff_t ;
typedef int global_State ;
struct TYPE_10__ {int gct; } ;
struct TYPE_12__ {TYPE_1__ gch; } ;
struct TYPE_11__ {int flags; scalar_t__ sizekgc; } ;
typedef TYPE_2__ GCproto ;
typedef TYPE_3__ GCobj ;


 int LJ_TPROTO ;
 int PROTO_CHILD ;
 TYPE_2__* gco2pt (TYPE_3__*) ;
 TYPE_3__* proto_kgc (TYPE_2__*,int ) ;
 int setptmode (int *,TYPE_2__*,int) ;

__attribute__((used)) static void setptmode_all(global_State *g, GCproto *pt, int mode)
{
  ptrdiff_t i;
  if (!(pt->flags & PROTO_CHILD)) return;
  for (i = -(ptrdiff_t)pt->sizekgc; i < 0; i++) {
    GCobj *o = proto_kgc(pt, i);
    if (o->gch.gct == ~LJ_TPROTO) {
      setptmode(g, gco2pt(o), mode);
      setptmode_all(g, gco2pt(o), mode);
    }
  }
}
