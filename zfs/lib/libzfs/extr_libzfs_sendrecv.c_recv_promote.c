
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_11__ {char* member_0; int zc_name; int zc_value; } ;
typedef TYPE_2__ zfs_cmd_t ;
struct TYPE_12__ {scalar_t__ verbose; } ;
typedef TYPE_3__ recvflags_t ;
typedef int libzfs_handle_t ;


 int DCP_CMD_FORCE_NEW_KEY ;
 int EACCES ;
 int ZFS_IOC_PROMOTE ;
 int ZFS_TYPE_DATASET ;
 int lzc_change_key (int ,int ,int *,int *,int ) ;
 int printf (char*,char const*) ;
 TYPE_1__* recv_open_grand_origin (TYPE_1__*) ;
 int strlcpy (int ,char const*,int) ;
 int zfs_close (TYPE_1__*) ;
 int zfs_ioctl (int *,int ,TYPE_2__*) ;
 TYPE_1__* zfs_open (int *,char const*,int ) ;

__attribute__((used)) static int
recv_promote(libzfs_handle_t *hdl, const char *fsname,
    const char *origin_fsname, recvflags_t *flags)
{
 int err;
 zfs_cmd_t zc = {"\0"};
 zfs_handle_t *zhp = ((void*)0), *ozhp = ((void*)0);

 if (flags->verbose)
  (void) printf("promoting %s\n", fsname);

 (void) strlcpy(zc.zc_value, origin_fsname, sizeof (zc.zc_value));
 (void) strlcpy(zc.zc_name, fsname, sizeof (zc.zc_name));






 err = zfs_ioctl(hdl, ZFS_IOC_PROMOTE, &zc);
 if (err == EACCES) {
  zhp = zfs_open(hdl, fsname, ZFS_TYPE_DATASET);
  if (zhp == ((void*)0)) {
   err = -1;
   goto out;
  }

  ozhp = recv_open_grand_origin(zhp);
  if (ozhp == ((void*)0)) {
   err = -1;
   goto out;
  }

  err = lzc_change_key(ozhp->zfs_name, DCP_CMD_FORCE_NEW_KEY,
      ((void*)0), ((void*)0), 0);
  if (err != 0)
   goto out;

  err = zfs_ioctl(hdl, ZFS_IOC_PROMOTE, &zc);
 }

out:
 if (zhp != ((void*)0))
  zfs_close(zhp);
 if (ozhp != ((void*)0))
  zfs_close(ozhp);

 return (err);
}
