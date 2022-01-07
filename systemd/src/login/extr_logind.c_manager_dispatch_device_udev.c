
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device_monitor ;
typedef int sd_device ;
typedef int Manager ;


 int assert (int *) ;
 int manager_process_seat_device (int *,int *) ;

__attribute__((used)) static int manager_dispatch_device_udev(sd_device_monitor *monitor, sd_device *device, void *userdata) {
        Manager *m = userdata;

        assert(m);
        assert(device);

        manager_process_seat_device(m, device);
        return 0;
}
