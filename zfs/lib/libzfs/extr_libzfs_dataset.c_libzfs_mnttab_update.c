
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct mnttab {int mnt_mntopts; int mnt_fstype; int mnt_mountp; int mnt_special; } ;
struct TYPE_11__ {TYPE_2__* mnt_mntopts; TYPE_2__* mnt_fstype; TYPE_2__* mnt_mountp; TYPE_2__* mnt_special; } ;
struct TYPE_12__ {TYPE_1__ mtn_mt; } ;
typedef TYPE_2__ mnttab_node_t ;
struct TYPE_13__ {int libzfs_mnttab_cache; int libzfs_mnttab; } ;
typedef TYPE_3__ libzfs_handle_t ;
typedef int avl_index_t ;


 int ENOENT ;
 int MNTTAB ;
 int MNTTYPE_ZFS ;
 int avl_add (int *,TYPE_2__*) ;
 int * avl_find (int *,TYPE_2__*,int *) ;
 int free (TYPE_2__*) ;
 int * freopen (int ,char*,int ) ;
 scalar_t__ getmntent (int ,struct mnttab*) ;
 scalar_t__ strcmp (int ,int ) ;
 TYPE_2__* zfs_alloc (TYPE_3__*,int) ;
 void* zfs_strdup (TYPE_3__*,int ) ;

int
libzfs_mnttab_update(libzfs_handle_t *hdl)
{
 struct mnttab entry;


 if (freopen(MNTTAB, "r", hdl->libzfs_mnttab) == ((void*)0))
  return (ENOENT);

 while (getmntent(hdl->libzfs_mnttab, &entry) == 0) {
  mnttab_node_t *mtn;
  avl_index_t where;

  if (strcmp(entry.mnt_fstype, MNTTYPE_ZFS) != 0)
   continue;

  mtn = zfs_alloc(hdl, sizeof (mnttab_node_t));
  mtn->mtn_mt.mnt_special = zfs_strdup(hdl, entry.mnt_special);
  mtn->mtn_mt.mnt_mountp = zfs_strdup(hdl, entry.mnt_mountp);
  mtn->mtn_mt.mnt_fstype = zfs_strdup(hdl, entry.mnt_fstype);
  mtn->mtn_mt.mnt_mntopts = zfs_strdup(hdl, entry.mnt_mntopts);


  if (avl_find(&hdl->libzfs_mnttab_cache, mtn, &where) != ((void*)0)) {
   free(mtn->mtn_mt.mnt_special);
   free(mtn->mtn_mt.mnt_mountp);
   free(mtn->mtn_mt.mnt_fstype);
   free(mtn->mtn_mt.mnt_mntopts);
   free(mtn);
   continue;
  }

  avl_add(&hdl->libzfs_mnttab_cache, mtn);
 }

 return (0);
}
