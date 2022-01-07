
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ddp_refcnt; } ;
typedef TYPE_1__ ddt_phys_t ;


 int ASSERT (int) ;

void
ddt_phys_decref(ddt_phys_t *ddp)
{
 if (ddp) {
  ASSERT(ddp->ddp_refcnt > 0);
  ddp->ddp_refcnt--;
 }
}
