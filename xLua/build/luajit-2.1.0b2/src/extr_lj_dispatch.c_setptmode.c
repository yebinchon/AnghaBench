
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int global_State ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ GCproto ;


 int LUAJIT_MODE_FLUSH ;
 int LUAJIT_MODE_ON ;
 int PROTO_NOJIT ;
 int lj_trace_flushproto (int *,TYPE_1__*) ;
 int lj_trace_reenableproto (TYPE_1__*) ;

__attribute__((used)) static void setptmode(global_State *g, GCproto *pt, int mode)
{
  if ((mode & LUAJIT_MODE_ON)) {
    pt->flags &= ~PROTO_NOJIT;
    lj_trace_reenableproto(pt);
  } else {
    if (!(mode & LUAJIT_MODE_FLUSH))
      pt->flags |= PROTO_NOJIT;
    lj_trace_flushproto(g, pt);
  }
}
