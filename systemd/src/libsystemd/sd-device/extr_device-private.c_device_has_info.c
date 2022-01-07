
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ devlink_priority; scalar_t__ watch_handle; int tags; int properties_db; int devlinks; } ;
typedef TYPE_1__ sd_device ;


 int assert (TYPE_1__*) ;
 int ordered_hashmap_isempty (int ) ;
 int set_isempty (int ) ;

__attribute__((used)) static bool device_has_info(sd_device *device) {
        assert(device);

        if (!set_isempty(device->devlinks))
                return 1;

        if (device->devlink_priority != 0)
                return 1;

        if (!ordered_hashmap_isempty(device->properties_db))
                return 1;

        if (!set_isempty(device->tags))
                return 1;

        if (device->watch_handle >= 0)
                return 1;

        return 0;
}
