
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_device_monitor ;
typedef int sd_device ;
typedef int Manager ;


 int assert (int *) ;
 int device_ensure_usec_initialized (int *,int *) ;
 int event_queue_insert (int *,int *) ;
 int event_queue_start (int *) ;
 int log_device_error_errno (int *,int,char*) ;

__attribute__((used)) static int on_uevent(sd_device_monitor *monitor, sd_device *dev, void *userdata) {
        Manager *manager = userdata;
        int r;

        assert(manager);

        device_ensure_usec_initialized(dev, ((void*)0));

        r = event_queue_insert(manager, dev);
        if (r < 0) {
                log_device_error_errno(dev, r, "Failed to insert device into event queue: %m");
                return 1;
        }


        event_queue_start(manager);

        return 1;
}
