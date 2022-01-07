
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_monitor {int monitor; } ;


 int assert (struct udev_monitor*) ;
 struct udev_monitor* mfree (struct udev_monitor*) ;
 int sd_device_monitor_unref (int ) ;

__attribute__((used)) static struct udev_monitor *udev_monitor_free(struct udev_monitor *udev_monitor) {
        assert(udev_monitor);

        sd_device_monitor_unref(udev_monitor->monitor);
        return mfree(udev_monitor);
}
