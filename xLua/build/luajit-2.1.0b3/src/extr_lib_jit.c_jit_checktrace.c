
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {scalar_t__ sizetrace; } ;
typedef TYPE_1__ jit_State ;
typedef scalar_t__ TraceNo ;
typedef int GCtrace ;


 TYPE_1__* L2J (int *) ;
 int lj_lib_checkint (int *,int) ;
 int * traceref (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static GCtrace *jit_checktrace(lua_State *L)
{
  TraceNo tr = (TraceNo)lj_lib_checkint(L, 1);
  jit_State *J = L2J(L);
  if (tr > 0 && tr < J->sizetrace)
    return traceref(J, tr);
  return ((void*)0);
}
