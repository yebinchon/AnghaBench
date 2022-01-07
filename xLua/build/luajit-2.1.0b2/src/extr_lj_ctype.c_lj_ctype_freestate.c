
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int global_State ;
struct TYPE_6__ {int sizeid; int cbid; } ;
struct TYPE_7__ {TYPE_1__ cb; int sizetab; int tab; } ;
typedef TYPE_2__ CTState ;


 int CType ;
 int CTypeID1 ;
 TYPE_2__* ctype_ctsG (int *) ;
 int lj_ccallback_mcode_free (TYPE_2__*) ;
 int lj_mem_freet (int *,TYPE_2__*) ;
 int lj_mem_freevec (int *,int ,int ,int ) ;

void lj_ctype_freestate(global_State *g)
{
  CTState *cts = ctype_ctsG(g);
  if (cts) {
    lj_ccallback_mcode_free(cts);
    lj_mem_freevec(g, cts->tab, cts->sizetab, CType);
    lj_mem_freevec(g, cts->cb.cbid, cts->cb.sizeid, CTypeID1);
    lj_mem_freet(g, cts);
  }
}
