
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_handle_t ;
typedef int u_longlong_t ;
struct TYPE_3__ {scalar_t__ cb_numattempted; scalar_t__ cb_numfailed; int member_0; } ;
typedef TYPE_1__ loadkey_cbdata_t ;
typedef int libzfs_handle_t ;


 int ENOENT ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_VOLUME ;
 char* gettext (char*) ;
 int load_keys_cb (int ,TYPE_1__*) ;
 int printf (char*,int ,int ) ;
 int zfs_close (int *) ;
 int zfs_handle_dup (int *) ;
 int * zfs_open (int *,char*,int) ;

int
zfs_crypto_attempt_load_keys(libzfs_handle_t *hdl, char *fsname)
{
 int ret;
 zfs_handle_t *zhp = ((void*)0);
 loadkey_cbdata_t cb = { 0 };

 zhp = zfs_open(hdl, fsname, ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
 if (zhp == ((void*)0)) {
  ret = ENOENT;
  goto error;
 }

 ret = load_keys_cb(zfs_handle_dup(zhp), &cb);
 if (ret)
  goto error;

 (void) printf(gettext("%llu / %llu keys successfully loaded\n"),
     (u_longlong_t)(cb.cb_numattempted - cb.cb_numfailed),
     (u_longlong_t)cb.cb_numattempted);

 if (cb.cb_numfailed != 0) {
  ret = -1;
  goto error;
 }

 zfs_close(zhp);
 return (0);

error:
 if (zhp != ((void*)0))
  zfs_close(zhp);
 return (ret);
}
