
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ddp_phys_birth; int * ddp_dva; } ;
typedef TYPE_1__ ddt_phys_t ;
struct TYPE_6__ {scalar_t__ dde_phys; } ;
typedef TYPE_2__ ddt_entry_t ;
typedef int blkptr_t ;


 int BP_IDENTITY (int const*) ;
 scalar_t__ BP_PHYSICAL_BIRTH (int const*) ;
 int DDT_PHYS_TYPES ;
 scalar_t__ DVA_EQUAL (int ,int *) ;

ddt_phys_t *
ddt_phys_select(const ddt_entry_t *dde, const blkptr_t *bp)
{
 ddt_phys_t *ddp = (ddt_phys_t *)dde->dde_phys;

 for (int p = 0; p < DDT_PHYS_TYPES; p++, ddp++) {
  if (DVA_EQUAL(BP_IDENTITY(bp), &ddp->ddp_dva[0]) &&
      BP_PHYSICAL_BIRTH(bp) == ddp->ddp_phys_birth)
   return (ddp);
 }
 return (((void*)0));
}
