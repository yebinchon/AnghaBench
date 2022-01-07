
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int (* zfs_iter_f ) (TYPE_1__*,void*) ;
struct TYPE_8__ {int zfs_hdl; int zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;
struct mnttab {char* mnt_fstype; char* mnt_special; } ;
typedef int mnt_prop ;
typedef int FILE ;


 int B_FALSE ;
 int ENOENT ;
 int MNTTAB ;
 char* MNTTYPE_ZFS ;
 int ZFS_MAXPROPLEN ;
 int ZFS_PROP_MOUNTPOINT ;
 int ZFS_TYPE_FILESYSTEM ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 scalar_t__ getmntent (int *,struct mnttab*) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (int ) ;
 scalar_t__ strncmp (char*,int ,size_t) ;
 int verify (int) ;
 int zfs_close (TYPE_1__*) ;
 TYPE_1__* zfs_open (int ,char*,int ) ;
 scalar_t__ zfs_prop_get (TYPE_1__*,int ,char*,int,int *,int *,int ,int ) ;

int
zfs_iter_mounted(zfs_handle_t *zhp, zfs_iter_f func, void *data)
{
 char mnt_prop[ZFS_MAXPROPLEN];
 struct mnttab entry;
 zfs_handle_t *mtab_zhp;
 size_t namelen = strlen(zhp->zfs_name);
 FILE *mnttab;
 int err = 0;

 if ((mnttab = fopen(MNTTAB, "r")) == ((void*)0))
  return (ENOENT);

 while (err == 0 && getmntent(mnttab, &entry) == 0) {

  if (strcmp(entry.mnt_fstype, MNTTYPE_ZFS) != 0)
   continue;


  if (strncmp(entry.mnt_special, zhp->zfs_name, namelen) != 0 ||
      (entry.mnt_special[namelen] != '/' &&
      entry.mnt_special[namelen] != '@'))
   continue;

  if ((mtab_zhp = zfs_open(zhp->zfs_hdl, entry.mnt_special,
      ZFS_TYPE_FILESYSTEM)) == ((void*)0))
   continue;


  verify(zfs_prop_get(mtab_zhp, ZFS_PROP_MOUNTPOINT, mnt_prop,
      sizeof (mnt_prop), ((void*)0), ((void*)0), 0, B_FALSE) == 0);
  if (strcmp(mnt_prop, "legacy") == 0) {
   zfs_close(mtab_zhp);
   continue;
  }

  err = func(mtab_zhp, data);
 }

 fclose(mnttab);

 return (err);
}
