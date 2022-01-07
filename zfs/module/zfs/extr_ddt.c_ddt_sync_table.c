
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_10__ {scalar_t__ ub_version; } ;
struct TYPE_11__ {scalar_t__ spa_ddt_stat_object; unsigned long long spa_dedup_dspace; TYPE_1__ spa_uberblock; } ;
typedef TYPE_2__ spa_t ;
typedef enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
typedef int dmu_tx_t ;
struct TYPE_12__ {int ddt_histogram_cache; int ddt_histogram; int ddt_tree; int ddt_os; TYPE_2__* ddt_spa; } ;
typedef TYPE_3__ ddt_t ;
typedef int ddt_entry_t ;


 int ASSERT (int) ;
 int DDT_CLASSES ;
 int DDT_TYPES ;
 int DMU_OT_DDT_STATS ;
 int DMU_POOL_DDT_STATS ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 scalar_t__ SPA_VERSION_DEDUP ;
 int VERIFY (int) ;
 int * avl_destroy_nodes (int *,void**) ;
 scalar_t__ avl_numnodes (int *) ;
 int bcopy (int ,int *,int) ;
 int ddt_free (int *) ;
 scalar_t__ ddt_object_count (TYPE_3__*,int,int,scalar_t__*) ;
 int ddt_object_destroy (TYPE_3__*,int,int,int *) ;
 scalar_t__ ddt_object_exists (TYPE_3__*,int,int) ;
 int ddt_object_sync (TYPE_3__*,int,int,int *) ;
 int ddt_sync_entry (TYPE_3__*,int *,int *,scalar_t__) ;
 scalar_t__ zap_create_link (int ,int ,int ,int ,int *) ;

__attribute__((used)) static void
ddt_sync_table(ddt_t *ddt, dmu_tx_t *tx, uint64_t txg)
{
 spa_t *spa = ddt->ddt_spa;
 ddt_entry_t *dde;
 void *cookie = ((void*)0);

 if (avl_numnodes(&ddt->ddt_tree) == 0)
  return;

 ASSERT(spa->spa_uberblock.ub_version >= SPA_VERSION_DEDUP);

 if (spa->spa_ddt_stat_object == 0) {
  spa->spa_ddt_stat_object = zap_create_link(ddt->ddt_os,
      DMU_OT_DDT_STATS, DMU_POOL_DIRECTORY_OBJECT,
      DMU_POOL_DDT_STATS, tx);
 }

 while ((dde = avl_destroy_nodes(&ddt->ddt_tree, &cookie)) != ((void*)0)) {
  ddt_sync_entry(ddt, dde, tx, txg);
  ddt_free(dde);
 }

 for (enum ddt_type type = 0; type < DDT_TYPES; type++) {
  uint64_t add, count = 0;
  for (enum ddt_class class = 0; class < DDT_CLASSES; class++) {
   if (ddt_object_exists(ddt, type, class)) {
    ddt_object_sync(ddt, type, class, tx);
    VERIFY(ddt_object_count(ddt, type, class,
        &add) == 0);
    count += add;
   }
  }
  for (enum ddt_class class = 0; class < DDT_CLASSES; class++) {
   if (count == 0 && ddt_object_exists(ddt, type, class))
    ddt_object_destroy(ddt, type, class, tx);
  }
 }

 bcopy(ddt->ddt_histogram, &ddt->ddt_histogram_cache,
     sizeof (ddt->ddt_histogram));
 spa->spa_dedup_dspace = ~0ULL;
}
