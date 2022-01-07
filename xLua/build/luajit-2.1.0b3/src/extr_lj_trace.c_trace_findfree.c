
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int freetrace; int sizetrace; int * trace; int L; scalar_t__* param; } ;
typedef TYPE_1__ jit_State ;
typedef int TraceNo ;
typedef int MSize ;


 int GCRef ;
 size_t JIT_P_maxtrace ;
 int lj_mem_growvec (int ,int *,int,int,int ) ;
 int setgcrefnull (int ) ;
 int * traceref (TYPE_1__*,int) ;

__attribute__((used)) static TraceNo trace_findfree(jit_State *J)
{
  MSize osz, lim;
  if (J->freetrace == 0)
    J->freetrace = 1;
  for (; J->freetrace < J->sizetrace; J->freetrace++)
    if (traceref(J, J->freetrace) == ((void*)0))
      return J->freetrace++;

  lim = (MSize)J->param[JIT_P_maxtrace] + 1;
  if (lim < 2) lim = 2; else if (lim > 65535) lim = 65535;
  osz = J->sizetrace;
  if (osz >= lim)
    return 0;
  lj_mem_growvec(J->L, J->trace, J->sizetrace, lim, GCRef);
  for (; osz < J->sizetrace; osz++)
    setgcrefnull(J->trace[osz]);
  return J->freetrace;
}
