
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ddp_phys_birth; int * ddp_dva; } ;
typedef TYPE_1__ ddt_phys_t ;
struct TYPE_7__ {int * blk_dva; } ;
typedef TYPE_2__ blkptr_t ;


 int ASSERT (int) ;
 scalar_t__ BP_PHYSICAL_BIRTH (TYPE_2__ const*) ;
 int SPA_DVAS_PER_BP ;

void
ddt_phys_fill(ddt_phys_t *ddp, const blkptr_t *bp)
{
 ASSERT(ddp->ddp_phys_birth == 0);

 for (int d = 0; d < SPA_DVAS_PER_BP; d++)
  ddp->ddp_dva[d] = bp->blk_dva[d];
 ddp->ddp_phys_birth = BP_PHYSICAL_BIRTH(bp);
}
