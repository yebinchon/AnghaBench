
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_6__ {scalar_t__ cleanupfd; int * zhp; } ;
typedef TYPE_1__ differ_info_t ;


 int O_EXCL ;
 int O_RDWR ;
 int VERIFY (int) ;
 int ZFS_DEV ;
 scalar_t__ find_shares_object (TYPE_1__*) ;
 scalar_t__ get_mountpoints (TYPE_1__*) ;
 scalar_t__ get_snapshot_names (TYPE_1__*,char const*,char const*) ;
 scalar_t__ open (int ,int) ;

__attribute__((used)) static int
setup_differ_info(zfs_handle_t *zhp, const char *fromsnap,
    const char *tosnap, differ_info_t *di)
{
 di->zhp = zhp;

 di->cleanupfd = open(ZFS_DEV, O_RDWR|O_EXCL);
 VERIFY(di->cleanupfd >= 0);

 if (get_snapshot_names(di, fromsnap, tosnap) != 0)
  return (-1);

 if (get_mountpoints(di) != 0)
  return (-1);

 if (find_shares_object(di) != 0)
  return (-1);

 return (0);
}
