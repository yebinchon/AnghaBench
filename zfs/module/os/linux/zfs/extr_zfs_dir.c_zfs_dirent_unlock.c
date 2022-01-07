
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int z_lock; TYPE_2__* z_dirlocks; int z_name_lock; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_6__ {int dl_sharecnt; scalar_t__ dl_namesize; int dl_cv; struct TYPE_6__* dl_name; struct TYPE_6__* dl_next; int dl_namelock; TYPE_1__* dl_dzp; } ;
typedef TYPE_2__ zfs_dirlock_t ;


 int cv_broadcast (int *) ;
 int cv_destroy (int *) ;
 int kmem_free (TYPE_2__*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rw_exit (int *) ;

void
zfs_dirent_unlock(zfs_dirlock_t *dl)
{
 znode_t *dzp = dl->dl_dzp;
 zfs_dirlock_t **prev_dl, *cur_dl;

 mutex_enter(&dzp->z_lock);

 if (!dl->dl_namelock)
  rw_exit(&dzp->z_name_lock);

 if (dl->dl_sharecnt > 1) {
  dl->dl_sharecnt--;
  mutex_exit(&dzp->z_lock);
  return;
 }
 prev_dl = &dzp->z_dirlocks;
 while ((cur_dl = *prev_dl) != dl)
  prev_dl = &cur_dl->dl_next;
 *prev_dl = dl->dl_next;
 cv_broadcast(&dl->dl_cv);
 mutex_exit(&dzp->z_lock);

 if (dl->dl_namesize != 0)
  kmem_free(dl->dl_name, dl->dl_namesize);
 cv_destroy(&dl->dl_cv);
 kmem_free(dl, sizeof (*dl));
}
