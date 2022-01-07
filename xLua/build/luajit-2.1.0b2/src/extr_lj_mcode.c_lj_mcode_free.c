
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ szallmcarea; int * mcarea; } ;
typedef TYPE_1__ jit_State ;
struct TYPE_6__ {int size; int * next; } ;
typedef int MCode ;
typedef TYPE_2__ MCLink ;


 int mcode_free (TYPE_1__*,int *,int ) ;

void lj_mcode_free(jit_State *J)
{
  MCode *mc = J->mcarea;
  J->mcarea = ((void*)0);
  J->szallmcarea = 0;
  while (mc) {
    MCode *next = ((MCLink *)mc)->next;
    mcode_free(J, mc, ((MCLink *)mc)->size);
    mc = next;
  }
}
