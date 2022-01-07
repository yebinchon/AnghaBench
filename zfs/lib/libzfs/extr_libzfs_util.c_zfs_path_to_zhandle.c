
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_type_t ;
typedef int zfs_handle_t ;
struct stat64 {int dummy; } ;
struct extmnttab {char* mnt_special; int mnt_fstype; } ;
struct TYPE_4__ {int libzfs_mnttab; } ;
typedef TYPE_1__ libzfs_handle_t ;


 int MNTTAB ;
 int MNTTYPE_ZFS ;
 int ZFS_TYPE_FILESYSTEM ;
 int fprintf (int ,char*,char*) ;
 int * freopen (int ,char*,int ) ;
 scalar_t__ getextmntent (char*,struct extmnttab*,struct stat64*) ;
 char* gettext (char*) ;
 int stderr ;
 scalar_t__ strcmp (int ,int ) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;
 int * zfs_open (TYPE_1__*,char*,int ) ;

zfs_handle_t *
zfs_path_to_zhandle(libzfs_handle_t *hdl, char *path, zfs_type_t argtype)
{
 struct stat64 statbuf;
 struct extmnttab entry;

 if (path[0] != '/' && strncmp(path, "./", strlen("./")) != 0) {



  return (zfs_open(hdl, path, argtype));
 }


 if (freopen(MNTTAB, "r", hdl->libzfs_mnttab) == ((void*)0))
  return (((void*)0));

 if (getextmntent(path, &entry, &statbuf) != 0)
  return (((void*)0));

 if (strcmp(entry.mnt_fstype, MNTTYPE_ZFS) != 0) {
  (void) fprintf(stderr, gettext("'%s': not a ZFS filesystem\n"),
      path);
  return (((void*)0));
 }

 return (zfs_open(hdl, entry.mnt_special, ZFS_TYPE_FILESYSTEM));
}
