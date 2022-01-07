
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libzfs_handle_t ;


 int BLKFLSBUF ;
 int EZFS_NOCAP ;
 int EZFS_OPENFAILED ;
 int O_DIRECT ;
 int O_RDWR ;
 int TEXT_DOMAIN ;
 int VT_ENOSPC ;
 int close (int) ;
 int dgettext (int ,char*) ;
 int efi_use_whole_disk (int) ;
 int errno ;
 int fsync (int) ;
 int ioctl (int,int ) ;
 int open (char const*,int) ;
 int zfs_error (int *,int ,char const*) ;
 int zfs_error_aux (int *,int ,char const*,...) ;

int
zpool_relabel_disk(libzfs_handle_t *hdl, const char *path, const char *msg)
{
 int fd, error;

 if ((fd = open(path, O_RDWR|O_DIRECT)) < 0) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "cannot "
      "relabel '%s': unable to open device: %d"), path, errno);
  return (zfs_error(hdl, EZFS_OPENFAILED, msg));
 }
 error = efi_use_whole_disk(fd);


 (void) fsync(fd);
 (void) ioctl(fd, BLKFLSBUF);

 (void) close(fd);
 if (error && error != VT_ENOSPC) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "cannot "
      "relabel '%s': unable to read disk capacity"), path);
  return (zfs_error(hdl, EZFS_NOCAP, msg));
 }
 return (0);
}
