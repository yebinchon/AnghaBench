
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int z_hold_size; int z_kstat; int z_vfs; int * z_hold_locks; int * z_hold_trees; int z_fuid_lock; int z_teardown_inactive_lock; int z_teardown_lock; int z_all_znodes; int z_lock; int z_znodes_lock; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int kmutex_t ;
typedef int avl_tree_t ;


 int avl_destroy (int *) ;
 int dataset_kstats_destroy (int *) ;
 int kmem_free (TYPE_1__*,int) ;
 int list_destroy (int *) ;
 int mutex_destroy (int *) ;
 int rrm_destroy (int *) ;
 int rw_destroy (int *) ;
 int vmem_free (int *,int) ;
 int zfs_fuid_destroy (TYPE_1__*) ;
 int zfsvfs_vfs_free (int ) ;

void
zfsvfs_free(zfsvfs_t *zfsvfs)
{
 int i, size = zfsvfs->z_hold_size;

 zfs_fuid_destroy(zfsvfs);

 mutex_destroy(&zfsvfs->z_znodes_lock);
 mutex_destroy(&zfsvfs->z_lock);
 list_destroy(&zfsvfs->z_all_znodes);
 rrm_destroy(&zfsvfs->z_teardown_lock);
 rw_destroy(&zfsvfs->z_teardown_inactive_lock);
 rw_destroy(&zfsvfs->z_fuid_lock);
 for (i = 0; i != size; i++) {
  avl_destroy(&zfsvfs->z_hold_trees[i]);
  mutex_destroy(&zfsvfs->z_hold_locks[i]);
 }
 vmem_free(zfsvfs->z_hold_trees, sizeof (avl_tree_t) * size);
 vmem_free(zfsvfs->z_hold_locks, sizeof (kmutex_t) * size);
 zfsvfs_vfs_free(zfsvfs->z_vfs);
 dataset_kstats_destroy(&zfsvfs->z_kstat);
 kmem_free(zfsvfs, sizeof (zfsvfs_t));
}
