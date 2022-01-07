
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef int parent ;
typedef int child ;


 int B_FALSE ;
 int ZFS_MAXPROPLEN ;
 int ZFS_PROP_MOUNTPOINT ;
 int libzfs_path_contains (char*,char*) ;
 int verify (int) ;
 scalar_t__ zfs_prop_get (int *,int ,char*,int,int *,int *,int ,int ) ;

__attribute__((used)) static int
non_descendant_idx(zfs_handle_t **handles, size_t num_handles, int idx)
{
 char parent[ZFS_MAXPROPLEN];
 char child[ZFS_MAXPROPLEN];
 int i;

 verify(zfs_prop_get(handles[idx], ZFS_PROP_MOUNTPOINT, parent,
     sizeof (parent), ((void*)0), ((void*)0), 0, B_FALSE) == 0);

 for (i = idx + 1; i < num_handles; i++) {
  verify(zfs_prop_get(handles[i], ZFS_PROP_MOUNTPOINT, child,
      sizeof (child), ((void*)0), ((void*)0), 0, B_FALSE) == 0);
  if (!libzfs_path_contains(parent, child))
   break;
 }
 return (i);
}
