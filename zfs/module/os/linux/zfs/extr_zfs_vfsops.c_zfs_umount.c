
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* z_os; int * z_arc_prune; } ;
typedef TYPE_1__ zfsvfs_t ;
struct super_block {TYPE_1__* s_fs_info; } ;
struct TYPE_9__ {int os_user_ptr_lock; } ;
typedef TYPE_2__ objset_t ;


 int B_TRUE ;
 int VERIFY (int) ;
 int arc_remove_prune_callback (int *) ;
 int dmu_objset_disown (TYPE_2__*,int ,TYPE_1__*) ;
 int dmu_objset_set_user (TYPE_2__*,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfsvfs_free (TYPE_1__*) ;
 scalar_t__ zfsvfs_teardown (TYPE_1__*,int ) ;
 int zpl_bdi_destroy (struct super_block*) ;

int
zfs_umount(struct super_block *sb)
{
 zfsvfs_t *zfsvfs = sb->s_fs_info;
 objset_t *os;

 if (zfsvfs->z_arc_prune != ((void*)0))
  arc_remove_prune_callback(zfsvfs->z_arc_prune);
 VERIFY(zfsvfs_teardown(zfsvfs, B_TRUE) == 0);
 os = zfsvfs->z_os;
 zpl_bdi_destroy(sb);





 if (os != ((void*)0)) {



  mutex_enter(&os->os_user_ptr_lock);
  dmu_objset_set_user(os, ((void*)0));
  mutex_exit(&os->os_user_ptr_lock);




  dmu_objset_disown(os, B_TRUE, zfsvfs);
 }

 zfsvfs_free(zfsvfs);
 return (0);
}
