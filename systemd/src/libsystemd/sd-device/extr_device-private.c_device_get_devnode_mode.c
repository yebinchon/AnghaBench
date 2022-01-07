
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ devmode; } ;
typedef TYPE_1__ sd_device ;
typedef scalar_t__ mode_t ;


 int ENOENT ;
 int assert (TYPE_1__*) ;
 int device_read_db (TYPE_1__*) ;

int device_get_devnode_mode(sd_device *device, mode_t *mode) {
        int r;

        assert(device);

        r = device_read_db(device);
        if (r < 0)
                return r;

        if (device->devmode == (mode_t) -1)
                return -ENOENT;

        if (mode)
                *mode = device->devmode;

        return 0;
}
