
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ action; scalar_t__ seqnum; int sealed; int subsystem; int devpath; } ;
typedef TYPE_1__ sd_device ;


 int EINVAL ;
 int assert (TYPE_1__*) ;
 int log_device_debug (TYPE_1__*,char*) ;

__attribute__((used)) static int device_verify(sd_device *device) {
        assert(device);

        if (!device->devpath || !device->subsystem || device->action < 0 || device->seqnum == 0) {
                log_device_debug(device, "sd-device: Device created from strv or nulstr lacks devpath, subsystem, action or seqnum.");
                return -EINVAL;
        }

        device->sealed = 1;

        return 0;
}
