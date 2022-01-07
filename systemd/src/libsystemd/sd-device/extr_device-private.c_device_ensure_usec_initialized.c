
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct TYPE_6__ {scalar_t__ usec_initialized; } ;
typedef TYPE_1__ sd_device ;


 int CLOCK_MONOTONIC ;
 int assert (TYPE_1__*) ;
 int device_set_usec_initialized (TYPE_1__*,scalar_t__) ;
 scalar_t__ now (int ) ;

int device_ensure_usec_initialized(sd_device *device, sd_device *device_old) {
        usec_t when;

        assert(device);

        if (device_old && device_old->usec_initialized > 0)
                when = device_old->usec_initialized;
        else
                when = now(CLOCK_MONOTONIC);

        return device_set_usec_initialized(device, when);
}
