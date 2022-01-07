
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct TYPE_5__ {scalar_t__ devuid; } ;
typedef TYPE_1__ sd_device ;


 int ENOENT ;
 int assert (TYPE_1__*) ;
 int device_read_db (TYPE_1__*) ;

int device_get_devnode_uid(sd_device *device, uid_t *uid) {
        int r;

        assert(device);

        r = device_read_db(device);
        if (r < 0)
                return r;

        if (device->devuid == (uid_t) -1)
                return -ENOENT;

        if (uid)
                *uid = device->devuid;

        return 0;
}
