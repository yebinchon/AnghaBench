
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int properties_generation; } ;
typedef TYPE_1__ sd_device ;


 int assert (TYPE_1__*) ;

uint64_t device_get_properties_generation(sd_device *device) {
        assert(device);

        return device->properties_generation;
}
