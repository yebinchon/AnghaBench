
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int property_devlinks_outdated; int devlinks_generation; int * devlinks; } ;
typedef TYPE_1__ sd_device ;


 int assert (TYPE_1__*) ;
 int set_free_free (int *) ;

void device_cleanup_devlinks(sd_device *device) {
        assert(device);

        set_free_free(device->devlinks);
        device->devlinks = ((void*)0);
        device->property_devlinks_outdated = 1;
        device->devlinks_generation++;
}
