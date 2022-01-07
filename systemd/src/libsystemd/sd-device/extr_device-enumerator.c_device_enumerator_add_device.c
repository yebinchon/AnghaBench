
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ n_devices; int * devices; int n_allocated; } ;
typedef TYPE_1__ sd_device_enumerator ;
typedef TYPE_1__ sd_device ;


 int EINVAL ;
 int ENOMEM ;
 int GREEDY_REALLOC (int *,int ,scalar_t__) ;
 int assert_return (TYPE_1__*,int ) ;
 int sd_device_ref (TYPE_1__*) ;

int device_enumerator_add_device(sd_device_enumerator *enumerator, sd_device *device) {
        assert_return(enumerator, -EINVAL);
        assert_return(device, -EINVAL);

        if (!GREEDY_REALLOC(enumerator->devices, enumerator->n_allocated, enumerator->n_devices + 1))
                return -ENOMEM;

        enumerator->devices[enumerator->n_devices++] = sd_device_ref(device);

        return 0;
}
