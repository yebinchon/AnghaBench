
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
struct stat64 {scalar_t__ st_ino; } ;
struct extmnttab {char* mnt_fstype; int mnt_mountp; int mnt_special; } ;
typedef int smbshare_prop ;
typedef int nfs_mnt_prop ;
typedef int mtpt_prop ;
typedef scalar_t__ ino_t ;
typedef scalar_t__ boolean_t ;


 int B_FALSE ;
 int ENOENT ;
 int MNTTAB ;
 char* MNTTYPE_ZFS ;
 int OP_SHARE ;
 int ZFS_MAXPROPLEN ;
 int ZFS_PROP_MOUNTPOINT ;
 int ZFS_PROP_SHARENFS ;
 int ZFS_PROP_SHARESMB ;
 int ZFS_TYPE_FILESYSTEM ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int * freopen (int ,char*,int ) ;
 int g_zfs ;
 scalar_t__ getextmntent (char*,struct extmnttab*,struct stat64*) ;
 char* gettext (char*) ;
 int mnttab_file ;
 scalar_t__ stat64 (int ,struct stat64*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 char* strerror (int ) ;
 int umount2 (char*,int) ;
 int verify (int) ;
 int zfs_close (int *) ;
 char* zfs_get_name (int *) ;
 int zfs_is_shared (int *) ;
 int * zfs_open (int ,int ,int ) ;
 scalar_t__ zfs_prop_get (int *,int ,char*,int,int *,int *,int ,int ) ;
 int zfs_unmount (int *,int *,int) ;
 int zfs_unmountall (int *,int) ;
 int zfs_unshareall_bypath (int *,char*) ;

__attribute__((used)) static int
unshare_unmount_path(int op, char *path, int flags, boolean_t is_manual)
{
 zfs_handle_t *zhp;
 int ret = 0;
 struct stat64 statbuf;
 struct extmnttab entry;
 const char *cmdname = (op == OP_SHARE) ? "unshare" : "unmount";
 ino_t path_inode;







 if (freopen(MNTTAB, "r", mnttab_file) == ((void*)0))
  return (ENOENT);

 if (getextmntent(path, &entry, &statbuf) != 0) {
  if (op == OP_SHARE) {
   (void) fprintf(stderr, gettext("cannot %s '%s': not "
       "currently mounted\n"), cmdname, path);
   return (1);
  }
  (void) fprintf(stderr, gettext("warning: %s not in"
      "/proc/self/mounts\n"), path);
  if ((ret = umount2(path, flags)) != 0)
   (void) fprintf(stderr, gettext("%s: %s\n"), path,
       strerror(errno));
  return (ret != 0);
 }
 path_inode = statbuf.st_ino;

 if (strcmp(entry.mnt_fstype, MNTTYPE_ZFS) != 0) {
  (void) fprintf(stderr, gettext("cannot %s '%s': not a ZFS "
      "filesystem\n"), cmdname, path);
  return (1);
 }

 if ((zhp = zfs_open(g_zfs, entry.mnt_special,
     ZFS_TYPE_FILESYSTEM)) == ((void*)0))
  return (1);

 ret = 1;
 if (stat64(entry.mnt_mountp, &statbuf) != 0) {
  (void) fprintf(stderr, gettext("cannot %s '%s': %s\n"),
      cmdname, path, strerror(errno));
  goto out;
 } else if (statbuf.st_ino != path_inode) {
  (void) fprintf(stderr, gettext("cannot "
      "%s '%s': not a mountpoint\n"), cmdname, path);
  goto out;
 }

 if (op == OP_SHARE) {
  char nfs_mnt_prop[ZFS_MAXPROPLEN];
  char smbshare_prop[ZFS_MAXPROPLEN];

  verify(zfs_prop_get(zhp, ZFS_PROP_SHARENFS, nfs_mnt_prop,
      sizeof (nfs_mnt_prop), ((void*)0), ((void*)0), 0, B_FALSE) == 0);
  verify(zfs_prop_get(zhp, ZFS_PROP_SHARESMB, smbshare_prop,
      sizeof (smbshare_prop), ((void*)0), ((void*)0), 0, B_FALSE) == 0);

  if (strcmp(nfs_mnt_prop, "off") == 0 &&
      strcmp(smbshare_prop, "off") == 0) {
   (void) fprintf(stderr, gettext("cannot unshare "
       "'%s': legacy share\n"), path);
   (void) fprintf(stderr, gettext("use exportfs(8) "
       "or smbcontrol(1) to unshare this filesystem\n"));
  } else if (!zfs_is_shared(zhp)) {
   (void) fprintf(stderr, gettext("cannot unshare '%s': "
       "not currently shared\n"), path);
  } else {
   ret = zfs_unshareall_bypath(zhp, path);
  }
 } else {
  char mtpt_prop[ZFS_MAXPROPLEN];

  verify(zfs_prop_get(zhp, ZFS_PROP_MOUNTPOINT, mtpt_prop,
      sizeof (mtpt_prop), ((void*)0), ((void*)0), 0, B_FALSE) == 0);

  if (is_manual) {
   ret = zfs_unmount(zhp, ((void*)0), flags);
  } else if (strcmp(mtpt_prop, "legacy") == 0) {
   (void) fprintf(stderr, gettext("cannot unmount "
       "'%s': legacy mountpoint\n"),
       zfs_get_name(zhp));
   (void) fprintf(stderr, gettext("use umount(8) "
       "to unmount this filesystem\n"));
  } else {
   ret = zfs_unmountall(zhp, flags);
  }
 }

out:
 zfs_close(zhp);

 return (ret != 0);
}
