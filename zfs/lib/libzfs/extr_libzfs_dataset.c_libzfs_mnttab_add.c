
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {void* mnt_mntopts; void* mnt_fstype; void* mnt_mountp; void* mnt_special; } ;
struct TYPE_12__ {TYPE_1__ mtn_mt; } ;
typedef TYPE_2__ mnttab_node_t ;
struct TYPE_13__ {int libzfs_mnttab_cache_lock; int libzfs_mnttab_cache; } ;
typedef TYPE_3__ libzfs_handle_t ;


 char const* MNTTYPE_ZFS ;
 int avl_add (int *,TYPE_2__*) ;
 int * avl_find (int *,TYPE_2__*,int *) ;
 scalar_t__ avl_numnodes (int *) ;
 int free (TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_2__* zfs_alloc (TYPE_3__*,int) ;
 void* zfs_strdup (TYPE_3__*,char const*) ;

void
libzfs_mnttab_add(libzfs_handle_t *hdl, const char *special,
    const char *mountp, const char *mntopts)
{
 mnttab_node_t *mtn;

 pthread_mutex_lock(&hdl->libzfs_mnttab_cache_lock);
 if (avl_numnodes(&hdl->libzfs_mnttab_cache) != 0) {
  mtn = zfs_alloc(hdl, sizeof (mnttab_node_t));
  mtn->mtn_mt.mnt_special = zfs_strdup(hdl, special);
  mtn->mtn_mt.mnt_mountp = zfs_strdup(hdl, mountp);
  mtn->mtn_mt.mnt_fstype = zfs_strdup(hdl, MNTTYPE_ZFS);
  mtn->mtn_mt.mnt_mntopts = zfs_strdup(hdl, mntopts);




  if (avl_find(&hdl->libzfs_mnttab_cache, mtn, ((void*)0)) != ((void*)0))
   free(mtn);
  else
   avl_add(&hdl->libzfs_mnttab_cache, mtn);
 }
 pthread_mutex_unlock(&hdl->libzfs_mnttab_cache_lock);
}
