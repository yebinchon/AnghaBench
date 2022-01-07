
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_device {int dummy; } ;
struct udev {int dummy; } ;
typedef int devid ;


 int MAXPATHLEN ;
 int errno ;
 int exit (int) ;
 int perror (char*) ;
 int printf (char*,char*) ;
 int * realpath (char*,char*) ;
 char* strrchr (char*,char) ;
 int udev_device_get_devid (struct udev_device*,char*,int) ;
 struct udev_device* udev_device_new_from_subsystem_sysname (struct udev*,char*,char*) ;
 int udev_device_unref (struct udev_device*) ;
 struct udev* udev_new () ;
 int udev_unref (struct udev*) ;

int
main(int argc, char *argv[])
{
 struct udev *udev;
 struct udev_device *dev = ((void*)0);
 char devid[128], nodepath[MAXPATHLEN];
 char *device, *sysname;
 int ret;

 if (argc == 1) {
  (void) printf("%s <devicepath> [search path]\n", argv[0]);
  exit(1);
 }
 device = argv[1];

 if ((udev = udev_new()) == ((void*)0)) {
  perror("udev_new");
  exit(1);
 }


 if (realpath(device, nodepath) == ((void*)0)) {
  perror("realpath");
  exit(1);
 }
 sysname = strrchr(nodepath, '/') + 1;

 if ((dev = udev_device_new_from_subsystem_sysname(udev, "block",
     sysname)) == ((void*)0)) {
  perror(sysname);
  exit(1);
 }

 if ((ret = udev_device_get_devid(dev, devid, sizeof (devid))) != 0) {
  udev_device_unref(dev);
  errno = ret;
  perror(sysname);
  exit(1);
 }

 (void) printf("devid %s\n", devid);

 udev_device_unref(dev);
 udev_unref(udev);

 return (0);
}
