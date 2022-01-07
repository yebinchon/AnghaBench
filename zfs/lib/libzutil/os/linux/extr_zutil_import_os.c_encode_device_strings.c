
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* vds_devphys; int vds_devid; } ;
typedef TYPE_1__ vdev_dev_strs_t ;
struct udev_device {int dummy; } ;
struct udev {int dummy; } ;
typedef scalar_t__ hrtime_t ;
typedef int boolean_t ;


 int ENODEV ;
 int ENOENT ;
 int ENXIO ;
 int MAXPATHLEN ;
 int MILLISEC ;
 int NSEC2MSEC (scalar_t__) ;
 scalar_t__ gethrtime () ;
 int * realpath (char const*,char*) ;
 int sched_yield () ;
 char* strrchr (char*,char) ;
 scalar_t__ udev_device_is_ready (struct udev_device*) ;
 struct udev_device* udev_device_new_from_subsystem_sysname (struct udev*,char*,char*) ;
 int udev_device_unref (struct udev_device*) ;
 int udev_mpath_whole_disk (struct udev_device*) ;
 struct udev* udev_new () ;
 int udev_unref (struct udev*) ;
 int usleep (int) ;
 int zfs_device_get_devid (struct udev_device*,int ,int) ;
 scalar_t__ zfs_device_get_physical (struct udev_device*,char*,int) ;

__attribute__((used)) static int
encode_device_strings(const char *path, vdev_dev_strs_t *ds,
    boolean_t wholedisk)
{
 return (ENOENT);

}
