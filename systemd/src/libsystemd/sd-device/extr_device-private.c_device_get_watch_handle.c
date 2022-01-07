
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int watch_handle; } ;
typedef TYPE_1__ sd_device ;


 int ENOENT ;
 int assert (TYPE_1__*) ;
 int device_read_db (TYPE_1__*) ;

int device_get_watch_handle(sd_device *device, int *handle) {
        int r;

        assert(device);

        r = device_read_db(device);
        if (r < 0)
                return r;

        if (device->watch_handle < 0)
                return -ENOENT;

        if (handle)
                *handle = device->watch_handle;

        return 0;
}
