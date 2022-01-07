
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dde_cv; int * dde_repair_abd; int ** dde_lead_zio; int dde_loading; } ;
typedef TYPE_1__ ddt_entry_t ;


 int ASSERT (int) ;
 int DDT_PHYS_TYPES ;
 int abd_free (int *) ;
 int cv_destroy (int *) ;
 int ddt_entry_cache ;
 int kmem_cache_free (int ,TYPE_1__*) ;

__attribute__((used)) static void
ddt_free(ddt_entry_t *dde)
{
 ASSERT(!dde->dde_loading);

 for (int p = 0; p < DDT_PHYS_TYPES; p++)
  ASSERT(dde->dde_lead_zio[p] == ((void*)0));

 if (dde->dde_repair_abd != ((void*)0))
  abd_free(dde->dde_repair_abd);

 cv_destroy(&dde->dde_cv);
 kmem_cache_free(ddt_entry_cache, dde);
}
