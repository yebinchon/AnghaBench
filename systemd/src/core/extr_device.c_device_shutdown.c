
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int devices_by_sysfs; int device_monitor; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int hashmap_free (int ) ;
 int sd_device_monitor_unref (int ) ;

__attribute__((used)) static void device_shutdown(Manager *m) {
        assert(m);

        m->device_monitor = sd_device_monitor_unref(m->device_monitor);
        m->devices_by_sysfs = hashmap_free(m->devices_by_sysfs);
}
