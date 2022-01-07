
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_6__ {scalar_t__ traceno; } ;
struct TYPE_7__ {scalar_t__ sizetrace; scalar_t__ trace; scalar_t__ irbotlim; scalar_t__ irtoplim; scalar_t__ irbuf; scalar_t__ sizesnap; scalar_t__ snapbuf; scalar_t__ sizesnapmap; scalar_t__ snapmapbuf; TYPE_1__ cur; } ;
typedef TYPE_2__ jit_State ;
typedef int global_State ;


 TYPE_2__* G2J (int *) ;
 int GCRef ;
 int IRIns ;
 int SnapEntry ;
 int SnapShot ;
 int lj_mcode_free (TYPE_2__*) ;
 int lj_mem_freevec (int *,scalar_t__,scalar_t__,int ) ;
 int lua_assert (int) ;
 int * traceref (TYPE_2__*,int) ;

void lj_trace_freestate(global_State *g)
{
  jit_State *J = G2J(g);







  lj_mcode_free(J);
  lj_mem_freevec(g, J->snapmapbuf, J->sizesnapmap, SnapEntry);
  lj_mem_freevec(g, J->snapbuf, J->sizesnap, SnapShot);
  lj_mem_freevec(g, J->irbuf + J->irbotlim, J->irtoplim - J->irbotlim, IRIns);
  lj_mem_freevec(g, J->trace, J->sizetrace, GCRef);
}
