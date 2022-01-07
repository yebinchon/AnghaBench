
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fsx_projid; } ;
typedef TYPE_1__ zfsxattr_t ;
struct TYPE_6__ {int zpc_expected_projid; } ;
typedef TYPE_2__ zfs_project_control_t ;


 int O_NOCTTY ;
 int O_RDONLY ;
 int ZFS_IOC_FSGETXATTR ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*,char const*,char*) ;
 char* gettext (char*) ;
 int ioctl (int,int ,TYPE_1__*) ;
 int open (char const*,int) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static int
zfs_project_load_projid(const char *name, zfs_project_control_t *zpc)
{
 zfsxattr_t fsx;
 int ret, fd;

 fd = open(name, O_RDONLY | O_NOCTTY);
 if (fd < 0) {
  (void) fprintf(stderr, gettext("failed to open %s: %s\n"),
      name, strerror(errno));
  return (fd);
 }

 ret = ioctl(fd, ZFS_IOC_FSGETXATTR, &fsx);
 if (ret)
  (void) fprintf(stderr,
      gettext("failed to get xattr for %s: %s\n"),
      name, strerror(errno));
 else
  zpc->zpc_expected_projid = fsx.fsx_projid;

 close(fd);
 return (ret);
}
