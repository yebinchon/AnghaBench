
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_device ;
struct TYPE_3__ {int dev_db_clone; int * dev; } ;
typedef TYPE_1__ UdevEvent ;


 int device_add_property (int *,char*,int *) ;
 int device_copy_properties (int *,int ) ;
 int log_device_debug_errno (int *,int,char*) ;
 scalar_t__ sd_device_get_devnum (int *,int *) ;

__attribute__((used)) static int udev_event_on_move(UdevEvent *event) {
        sd_device *dev = event->dev;
        int r;

        if (event->dev_db_clone &&
            sd_device_get_devnum(dev, ((void*)0)) < 0) {
                r = device_copy_properties(dev, event->dev_db_clone);
                if (r < 0)
                        log_device_debug_errno(dev, r, "Failed to copy properties from cloned sd_device object, ignoring: %m");
        }


        r = device_add_property(dev, "ID_RENAMING", ((void*)0));
        if (r < 0)
                return log_device_debug_errno(dev, r, "Failed to remove 'ID_RENAMING' property: %m");

        return 0;
}
