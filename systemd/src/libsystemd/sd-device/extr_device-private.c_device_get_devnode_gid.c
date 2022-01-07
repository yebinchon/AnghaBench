
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ devgid; } ;
typedef TYPE_1__ sd_device ;
typedef scalar_t__ gid_t ;


 int ENOENT ;
 int assert (TYPE_1__*) ;
 int device_read_db (TYPE_1__*) ;

int device_get_devnode_gid(sd_device *device, gid_t *gid) {
        int r;

        assert(device);

        r = device_read_db(device);
        if (r < 0)
                return r;

        if (device->devgid == (gid_t) -1)
                return -ENOENT;

        if (gid)
                *gid = device->devgid;

        return 0;
}
