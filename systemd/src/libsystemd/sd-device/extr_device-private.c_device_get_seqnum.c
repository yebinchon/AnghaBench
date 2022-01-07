
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ seqnum; } ;
typedef TYPE_1__ sd_device ;


 int ENOENT ;
 int assert (TYPE_1__*) ;

int device_get_seqnum(sd_device *device, uint64_t *seqnum) {
        assert(device);

        if (device->seqnum == 0)
                return -ENOENT;

        if (seqnum)
                *seqnum = device->seqnum;

        return 0;
}
