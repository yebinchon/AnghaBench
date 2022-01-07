
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_12__ {int za_first_integer; int za_name; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int uint64_t ;
typedef int spacemap_zap ;
struct TYPE_13__ {int spa_sm_logs_by_txg; int spa_metaslabs_by_flushed; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_14__ {int sls_mscount; int sls_txg; } ;
typedef TYPE_3__ spa_log_sm_t ;
typedef int metaslab_t ;


 int ASSERT (int ) ;
 int * AVL_NEXT (int *,int *) ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_LOG_SPACEMAP_ZAP ;
 int ENOENT ;
 int avl_add (int *,TYPE_3__*) ;
 TYPE_3__* avl_find (int *,TYPE_3__*,int *) ;
 int * avl_first (int *) ;
 int avl_is_empty (int *) ;
 int metaslab_unflushed_txg (int *) ;
 int spa_load_failed (TYPE_2__*,char*,int,...) ;
 TYPE_3__* spa_log_sm_alloc (int ,int ) ;
 int spa_meta_objset (TYPE_2__*) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int ,int ) ;
 int zap_cursor_retrieve (int *,TYPE_1__*) ;
 int zap_lookup (int ,int ,int ,int,int,int *) ;
 int zfs_strtonum (int ,int *) ;

__attribute__((used)) static int
spa_ld_log_sm_metadata(spa_t *spa)
{
 int error;
 uint64_t spacemap_zap;

 ASSERT(avl_is_empty(&spa->spa_sm_logs_by_txg));

 error = zap_lookup(spa_meta_objset(spa), DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_LOG_SPACEMAP_ZAP, sizeof (spacemap_zap), 1, &spacemap_zap);
 if (error == ENOENT) {

  return (0);
 } else if (error != 0) {
  spa_load_failed(spa, "spa_ld_log_sm_metadata(): failed at "
      "zap_lookup(DMU_POOL_DIRECTORY_OBJECT) [error %d]",
      error);
  return (error);
 }

 zap_cursor_t zc;
 zap_attribute_t za;
 for (zap_cursor_init(&zc, spa_meta_objset(spa), spacemap_zap);
     (error = zap_cursor_retrieve(&zc, &za)) == 0;
     zap_cursor_advance(&zc)) {
  uint64_t log_txg = zfs_strtonum(za.za_name, ((void*)0));
  spa_log_sm_t *sls =
      spa_log_sm_alloc(za.za_first_integer, log_txg);
  avl_add(&spa->spa_sm_logs_by_txg, sls);
 }
 zap_cursor_fini(&zc);
 if (error != ENOENT) {
  spa_load_failed(spa, "spa_ld_log_sm_metadata(): failed at "
      "zap_cursor_retrieve(spacemap_zap) [error %d]",
      error);
  return (error);
 }

 for (metaslab_t *m = avl_first(&spa->spa_metaslabs_by_flushed);
     m; m = AVL_NEXT(&spa->spa_metaslabs_by_flushed, m)) {
  spa_log_sm_t target = { .sls_txg = metaslab_unflushed_txg(m) };
  spa_log_sm_t *sls = avl_find(&spa->spa_sm_logs_by_txg,
      &target, ((void*)0));
  ASSERT(sls != ((void*)0));
  if (sls == ((void*)0)) {
   spa_load_failed(spa, "spa_ld_log_sm_metadata(): bug "
       "encountered: could not find log spacemap for "
       "TXG %ld [error %d]",
       metaslab_unflushed_txg(m), ENOENT);
   return (ENOENT);
  }
  sls->sls_mscount++;
 }

 return (0);
}
