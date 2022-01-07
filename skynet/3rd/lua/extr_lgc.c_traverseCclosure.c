
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lu_mem ;
typedef int global_State ;
struct TYPE_3__ {int nupvalues; int * upvalue; } ;
typedef TYPE_1__ CClosure ;


 int markvalue (int *,int *) ;
 int sizeCclosure (int) ;

__attribute__((used)) static lu_mem traverseCclosure (global_State *g, CClosure *cl) {
  int i;
  for (i = 0; i < cl->nupvalues; i++)
    markvalue(g, &cl->upvalue[i]);
  return sizeCclosure(cl->nupvalues);
}
