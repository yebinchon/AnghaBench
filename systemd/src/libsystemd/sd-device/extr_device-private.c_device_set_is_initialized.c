
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int is_initialized; } ;
typedef TYPE_1__ sd_device ;


 int assert (TYPE_1__*) ;

void device_set_is_initialized(sd_device *device) {
        assert(device);

        device->is_initialized = 1;
}
