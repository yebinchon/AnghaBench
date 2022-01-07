
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ skm_magic; scalar_t__ skm_avail; } ;
typedef TYPE_1__ spl_kmem_magazine_t ;


 int ASSERT (int) ;
 scalar_t__ SKM_MAGIC ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void
spl_magazine_free(spl_kmem_magazine_t *skm)
{
 ASSERT(skm->skm_magic == SKM_MAGIC);
 ASSERT(skm->skm_avail == 0);
 kfree(skm);
}
