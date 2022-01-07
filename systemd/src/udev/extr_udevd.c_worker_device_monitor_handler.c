
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int sd_device_monitor ;
struct TYPE_9__ {int * worker_watch; } ;
typedef TYPE_1__ sd_device ;
typedef TYPE_1__ Manager ;


 size_t WRITE_END ;
 int assert (TYPE_1__*) ;
 int device_monitor_send_device (int *,int *,TYPE_1__*) ;
 int log_device_warning_errno (TYPE_1__*,int,char*) ;
 int worker_process_device (TYPE_1__*,TYPE_1__*) ;
 int worker_send_message (int ) ;

__attribute__((used)) static int worker_device_monitor_handler(sd_device_monitor *monitor, sd_device *dev, void *userdata) {
        Manager *manager = userdata;
        int r;

        assert(dev);
        assert(manager);

        r = worker_process_device(manager, dev);
        if (r < 0)
                log_device_warning_errno(dev, r, "Failed to process device, ignoring: %m");


        r = device_monitor_send_device(monitor, ((void*)0), dev);
        if (r < 0)
                log_device_warning_errno(dev, r, "Failed to send device, ignoring: %m");


        r = worker_send_message(manager->worker_watch[WRITE_END]);
        if (r < 0)
                log_device_warning_errno(dev, r, "Failed to send signal to main daemon, ignoring: %m");

        return 1;
}
