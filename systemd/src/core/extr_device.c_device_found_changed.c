
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DeviceFound ;
typedef int Device ;


 int DEVICE_DEAD ;
 int DEVICE_FOUND_UDEV ;
 scalar_t__ DEVICE_NOT_FOUND ;
 int DEVICE_PLUGGED ;
 int DEVICE_TENTATIVE ;
 scalar_t__ FLAGS_SET (scalar_t__,int ) ;
 int UNIT (int *) ;
 int assert (int *) ;
 int device_set_state (int *,int ) ;
 int unit_acquire_invocation_id (int ) ;

__attribute__((used)) static void device_found_changed(Device *d, DeviceFound previous, DeviceFound now) {
        assert(d);


        if (previous == DEVICE_NOT_FOUND && now != DEVICE_NOT_FOUND)
                (void) unit_acquire_invocation_id(UNIT(d));

        if (FLAGS_SET(now, DEVICE_FOUND_UDEV))

                device_set_state(d, DEVICE_PLUGGED);
        else if (now != DEVICE_NOT_FOUND && !FLAGS_SET(previous, DEVICE_FOUND_UDEV))


                device_set_state(d, DEVICE_TENTATIVE);
        else


                device_set_state(d, DEVICE_DEAD);
}
