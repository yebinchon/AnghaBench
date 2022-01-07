
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uu_avl_walk_t ;
struct TYPE_6__ {TYPE_4__* cn_handle; } ;
typedef TYPE_1__ prop_changenode_t ;
struct TYPE_7__ {int cl_tree; } ;
typedef TYPE_2__ prop_changelist_t ;
typedef int newname ;
struct TYPE_8__ {char* zfs_name; } ;


 int UU_WALK_ROBUST ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int isa_child_of (char*,char const*) ;
 int remove_mountpoint (TYPE_4__*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char const*) ;
 int uu_avl_walk_end (int *) ;
 TYPE_1__* uu_avl_walk_next (int *) ;
 int * uu_avl_walk_start (int ,int ) ;

void
changelist_rename(prop_changelist_t *clp, const char *src, const char *dst)
{
 prop_changenode_t *cn;
 uu_avl_walk_t *walk;
 char newname[ZFS_MAX_DATASET_NAME_LEN];

 if ((walk = uu_avl_walk_start(clp->cl_tree, UU_WALK_ROBUST)) == ((void*)0))
  return;

 while ((cn = uu_avl_walk_next(walk)) != ((void*)0)) {



  if (!isa_child_of(cn->cn_handle->zfs_name, src))
   continue;




  remove_mountpoint(cn->cn_handle);

  (void) strlcpy(newname, dst, sizeof (newname));
  (void) strlcat(newname, cn->cn_handle->zfs_name + strlen(src),
      sizeof (newname));

  (void) strlcpy(cn->cn_handle->zfs_name, newname,
      sizeof (cn->cn_handle->zfs_name));
 }

 uu_avl_walk_end(walk);
}
