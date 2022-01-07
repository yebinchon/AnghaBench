
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* mnt_mntopts; TYPE_2__* mnt_fstype; TYPE_2__* mnt_mountp; TYPE_2__* mnt_special; } ;
struct TYPE_8__ {TYPE_1__ mtn_mt; } ;
typedef TYPE_2__ mnttab_node_t ;
struct TYPE_9__ {int libzfs_mnttab_cache_lock; int libzfs_mnttab_cache; } ;
typedef TYPE_3__ libzfs_handle_t ;


 int avl_destroy (int *) ;
 TYPE_2__* avl_destroy_nodes (int *,void**) ;
 int free (TYPE_2__*) ;
 int pthread_mutex_destroy (int *) ;

void
libzfs_mnttab_fini(libzfs_handle_t *hdl)
{
 void *cookie = ((void*)0);
 mnttab_node_t *mtn;

 while ((mtn = avl_destroy_nodes(&hdl->libzfs_mnttab_cache, &cookie))
     != ((void*)0)) {
  free(mtn->mtn_mt.mnt_special);
  free(mtn->mtn_mt.mnt_mountp);
  free(mtn->mtn_mt.mnt_fstype);
  free(mtn->mtn_mt.mnt_mntopts);
  free(mtn);
 }
 avl_destroy(&hdl->libzfs_mnttab_cache);
 (void) pthread_mutex_destroy(&hdl->libzfs_mnttab_cache_lock);
}
