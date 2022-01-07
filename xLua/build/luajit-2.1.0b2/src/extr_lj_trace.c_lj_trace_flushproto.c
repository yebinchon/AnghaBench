
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int global_State ;
struct TYPE_3__ {scalar_t__ trace; } ;
typedef TYPE_1__ GCproto ;


 int G2J (int *) ;
 int trace_flushroot (int ,int ) ;
 int traceref (int ,scalar_t__) ;

void lj_trace_flushproto(global_State *g, GCproto *pt)
{
  while (pt->trace != 0)
    trace_flushroot(G2J(g), traceref(G2J(g), pt->trace));
}
