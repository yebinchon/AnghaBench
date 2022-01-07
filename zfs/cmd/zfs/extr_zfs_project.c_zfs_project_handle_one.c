
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fsx_projid; int fsx_xflags; } ;
typedef TYPE_1__ zfsxattr_t ;
struct TYPE_6__ {int zpc_op; int zpc_expected_projid; int zpc_set_flag; int zpc_keep_projid; int zpc_newline; scalar_t__ zpc_ignore_noent; } ;
typedef TYPE_2__ zfs_project_control_t ;
typedef int uint32_t ;


 int ASSERT (int ) ;
 scalar_t__ ENOENT ;
 int O_NOCTTY ;
 int O_RDONLY ;
 int ZFS_DEFAULT_PROJID ;
 int ZFS_IOC_FSGETXATTR ;
 int ZFS_IOC_FSSETXATTR ;




 int ZFS_PROJINHERIT_FL ;
 int close (int) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char const*,char*) ;
 char* gettext (char*) ;
 int ioctl (int,int ,TYPE_1__*) ;
 int open (char const*,int) ;
 int printf (char*,...) ;
 int stderr ;
 char* strerror (scalar_t__) ;

__attribute__((used)) static int
zfs_project_handle_one(const char *name, zfs_project_control_t *zpc)
{
 zfsxattr_t fsx;
 int ret, fd;

 fd = open(name, O_RDONLY | O_NOCTTY);
 if (fd < 0) {
  if (errno == ENOENT && zpc->zpc_ignore_noent)
   return (0);

  (void) fprintf(stderr, gettext("failed to open %s: %s\n"),
      name, strerror(errno));
  return (fd);
 }

 ret = ioctl(fd, ZFS_IOC_FSGETXATTR, &fsx);
 if (ret) {
  (void) fprintf(stderr,
      gettext("failed to get xattr for %s: %s\n"),
      name, strerror(errno));
  goto out;
 }

 switch (zpc->zpc_op) {
 case 129:
  (void) printf("%5u %c %s\n", fsx.fsx_projid,
      (fsx.fsx_xflags & ZFS_PROJINHERIT_FL) ? 'P' : '-', name);
  goto out;
 case 131:
  if (fsx.fsx_projid == zpc->zpc_expected_projid &&
      fsx.fsx_xflags & ZFS_PROJINHERIT_FL)
   goto out;

  if (!zpc->zpc_newline) {
   char c = '\0';

   (void) printf("%s%c", name, c);
   goto out;
  }

  if (fsx.fsx_projid != zpc->zpc_expected_projid)
   (void) printf("%s - project ID is not set properly "
       "(%u/%u)\n", name, fsx.fsx_projid,
       (uint32_t)zpc->zpc_expected_projid);

  if (!(fsx.fsx_xflags & ZFS_PROJINHERIT_FL))
   (void) printf("%s - project inherit flag is not set\n",
       name);

  goto out;
 case 130:
  if (!(fsx.fsx_xflags & ZFS_PROJINHERIT_FL) &&
      (zpc->zpc_keep_projid ||
      fsx.fsx_projid == ZFS_DEFAULT_PROJID))
   goto out;

  fsx.fsx_xflags &= ~ZFS_PROJINHERIT_FL;
  if (!zpc->zpc_keep_projid)
   fsx.fsx_projid = ZFS_DEFAULT_PROJID;
  break;
 case 128:
  if (fsx.fsx_projid == zpc->zpc_expected_projid &&
      (!zpc->zpc_set_flag || fsx.fsx_xflags & ZFS_PROJINHERIT_FL))
   goto out;

  fsx.fsx_projid = zpc->zpc_expected_projid;
  if (zpc->zpc_set_flag)
   fsx.fsx_xflags |= ZFS_PROJINHERIT_FL;
  break;
 default:
  ASSERT(0);
  break;
 }

 ret = ioctl(fd, ZFS_IOC_FSSETXATTR, &fsx);
 if (ret)
  (void) fprintf(stderr,
      gettext("failed to set xattr for %s: %s\n"),
      name, strerror(errno));

out:
 close(fd);
 return (ret);
}
