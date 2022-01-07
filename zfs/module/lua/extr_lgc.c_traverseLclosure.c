
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lu_mem ;
typedef int global_State ;
struct TYPE_3__ {int nupvalues; int * upvals; int p; } ;
typedef TYPE_1__ LClosure ;


 int markobject (int *,int ) ;
 int sizeLclosure (int) ;

__attribute__((used)) static lu_mem traverseLclosure (global_State *g, LClosure *cl) {
  int i;
  markobject(g, cl->p);
  for (i = 0; i < cl->nupvalues; i++)
    markobject(g, cl->upvals[i]);
  return sizeLclosure(cl->nupvalues);
}
