
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_5__* z_os; struct TYPE_11__* z_parent; TYPE_1__* z_vfs; } ;
typedef TYPE_3__ zfsvfs_t ;
typedef int zfs_snapentry_t ;
struct path {TYPE_2__* mnt; struct dentry* dentry; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_12__ {int os_spa; } ;
struct TYPE_10__ {int mnt_flags; } ;
struct TYPE_9__ {char* vfs_mntpoint; } ;


 int EISDIR ;
 TYPE_3__* ITOZSB (struct inode*) ;
 int KM_SLEEP ;
 int MAXPATHLEN ;
 int MNT_SHRINKABLE ;
 int MOUNT_BUSY ;
 int RW_WRITER ;
 int SET_ERROR (int ) ;
 int UMH_WAIT_PROC ;
 int ZFS_ENTER (TYPE_3__*) ;
 int ZFS_EXIT (TYPE_3__*) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int call_usermodehelper (char*,char**,char**,int ) ;
 int dmu_objset_id (TYPE_5__*) ;
 char* dname (struct dentry*) ;
 int dprintf (char*,char*,char*) ;
 scalar_t__ follow_down_one (struct path*) ;
 int kmem_free (char*,int ) ;
 char* kmem_zalloc (int ,int ) ;
 int path_get (struct path*) ;
 int path_put (struct path*) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int snprintf (char*,int ,char*,char*,char*) ;
 int zfs_dbgmsg (char*,char*,int) ;
 int zfs_expire_snapshot ;
 int zfs_snapshot_lock ;
 int zfsctl_snapshot_add (int *) ;
 int * zfsctl_snapshot_alloc (char*,char*,int ,int ,struct dentry*) ;
 scalar_t__ zfsctl_snapshot_ismounted (char*) ;
 int zfsctl_snapshot_name (TYPE_3__*,char*,int ,char*) ;
 int zfsctl_snapshot_unmount_delay_impl (int *,int ) ;

int
zfsctl_snapshot_mount(struct path *path, int flags)
{
 struct dentry *dentry = path->dentry;
 struct inode *ip = dentry->d_inode;
 zfsvfs_t *zfsvfs;
 zfsvfs_t *snap_zfsvfs;
 zfs_snapentry_t *se;
 char *full_name, *full_path;
 char *argv[] = { "/usr/bin/env", "mount", "-t", "zfs", "-n", ((void*)0), ((void*)0),
     ((void*)0) };
 char *envp[] = { ((void*)0) };
 int error;
 struct path spath;

 if (ip == ((void*)0))
  return (SET_ERROR(EISDIR));

 zfsvfs = ITOZSB(ip);
 ZFS_ENTER(zfsvfs);

 full_name = kmem_zalloc(ZFS_MAX_DATASET_NAME_LEN, KM_SLEEP);
 full_path = kmem_zalloc(MAXPATHLEN, KM_SLEEP);

 error = zfsctl_snapshot_name(zfsvfs, dname(dentry),
     ZFS_MAX_DATASET_NAME_LEN, full_name);
 if (error)
  goto error;






 snprintf(full_path, MAXPATHLEN, "%s/.zfs/snapshot/%s",
     zfsvfs->z_vfs->vfs_mntpoint ? zfsvfs->z_vfs->vfs_mntpoint : "",
     dname(dentry));





 if (zfsctl_snapshot_ismounted(full_name)) {
  error = 0;
  goto error;
 }
 dprintf("mount; name=%s path=%s\n", full_name, full_path);
 argv[5] = full_name;
 argv[6] = full_path;
 error = call_usermodehelper(argv[0], argv, envp, UMH_WAIT_PROC);
 if (error) {
  if (!(error & MOUNT_BUSY << 8)) {
   zfs_dbgmsg("Unable to automount %s error=%d",
       full_path, error);
   error = SET_ERROR(EISDIR);
  } else {
   error = 0;
  }
  goto error;
 }





 spath = *path;
 path_get(&spath);
 if (follow_down_one(&spath)) {
  snap_zfsvfs = ITOZSB(spath.dentry->d_inode);
  snap_zfsvfs->z_parent = zfsvfs;
  dentry = spath.dentry;
  spath.mnt->mnt_flags |= MNT_SHRINKABLE;

  rw_enter(&zfs_snapshot_lock, RW_WRITER);
  se = zfsctl_snapshot_alloc(full_name, full_path,
      snap_zfsvfs->z_os->os_spa, dmu_objset_id(snap_zfsvfs->z_os),
      dentry);
  zfsctl_snapshot_add(se);
  zfsctl_snapshot_unmount_delay_impl(se, zfs_expire_snapshot);
  rw_exit(&zfs_snapshot_lock);
 }
 path_put(&spath);
error:
 kmem_free(full_name, ZFS_MAX_DATASET_NAME_LEN);
 kmem_free(full_path, MAXPATHLEN);

 ZFS_EXIT(zfsvfs);

 return (error);
}
