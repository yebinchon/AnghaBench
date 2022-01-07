
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ddt_lock; int ddt_repair_tree; int ddt_tree; } ;
typedef TYPE_1__ ddt_t ;


 int ASSERT (int) ;
 int avl_destroy (int *) ;
 scalar_t__ avl_numnodes (int *) ;
 int ddt_cache ;
 int kmem_cache_free (int ,TYPE_1__*) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void
ddt_table_free(ddt_t *ddt)
{
 ASSERT(avl_numnodes(&ddt->ddt_tree) == 0);
 ASSERT(avl_numnodes(&ddt->ddt_repair_tree) == 0);
 avl_destroy(&ddt->ddt_tree);
 avl_destroy(&ddt->ddt_repair_tree);
 mutex_destroy(&ddt->ddt_lock);
 kmem_cache_free(ddt_cache, ddt);
}
