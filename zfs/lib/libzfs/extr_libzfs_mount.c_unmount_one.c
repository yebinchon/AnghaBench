
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libzfs_handle_t ;


 int EZFS_UMOUNTFAILED ;
 int TEXT_DOMAIN ;
 int dgettext (int ,char*) ;
 int do_unmount (char const*,int) ;
 int zfs_error_fmt (int *,int ,int ,char const*) ;

__attribute__((used)) static int
unmount_one(libzfs_handle_t *hdl, const char *mountpoint, int flags)
{
 int error;

 error = do_unmount(mountpoint, flags);
 if (error != 0) {
  return (zfs_error_fmt(hdl, EZFS_UMOUNTFAILED,
      dgettext(TEXT_DOMAIN, "cannot unmount '%s'"),
      mountpoint));
 }

 return (0);
}
