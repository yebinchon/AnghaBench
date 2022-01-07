
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int avl_destroy (int *) ;
 int cv_destroy (int *) ;
 int ddt_fini () ;
 int dmu_fini () ;
 int fm_fini () ;
 int l2arc_stop () ;
 int metaslab_stat_fini () ;
 int mutex_destroy (int *) ;
 int qat_fini () ;
 int scan_fini () ;
 int spa_evict_all () ;
 int spa_import_progress_destroy () ;
 int spa_l2cache_avl ;
 int spa_l2cache_lock ;
 int spa_namespace_avl ;
 int spa_namespace_cv ;
 int spa_namespace_lock ;
 int spa_spare_avl ;
 int spa_spare_lock ;
 int unique_fini () ;
 int vdev_cache_stat_fini () ;
 int vdev_file_fini () ;
 int vdev_mirror_stat_fini () ;
 int vdev_raidz_math_fini () ;
 int zfs_btree_fini () ;
 int zfs_refcount_fini () ;
 int zil_fini () ;
 int zio_fini () ;

void
spa_fini(void)
{
 l2arc_stop();

 spa_evict_all();

 vdev_file_fini();
 vdev_cache_stat_fini();
 vdev_mirror_stat_fini();
 vdev_raidz_math_fini();
 zil_fini();
 dmu_fini();
 zio_fini();
 ddt_fini();
 metaslab_stat_fini();
 zfs_btree_fini();
 unique_fini();
 zfs_refcount_fini();
 fm_fini();
 scan_fini();
 qat_fini();
 spa_import_progress_destroy();

 avl_destroy(&spa_namespace_avl);
 avl_destroy(&spa_spare_avl);
 avl_destroy(&spa_l2cache_avl);

 cv_destroy(&spa_namespace_cv);
 mutex_destroy(&spa_namespace_lock);
 mutex_destroy(&spa_spare_lock);
 mutex_destroy(&spa_l2cache_lock);
}
