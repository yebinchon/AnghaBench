
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int usec_t ;
typedef int sd_device ;
typedef int UdevRules ;
struct TYPE_4__ {int * dev; } ;
typedef TYPE_1__ UdevEvent ;
typedef int Hashmap ;


 int device_delete_db (int *) ;
 int device_read_db_internal (int *,int) ;
 int device_tag_index (int *,int *,int) ;
 int log_device_debug_errno (int *,int,char*) ;
 scalar_t__ sd_device_get_devnum (int *,int *) ;
 int udev_node_remove (int *) ;
 int udev_rules_apply_to_event (int *,TYPE_1__*,int ,int *) ;
 int udev_watch_end (int *) ;

__attribute__((used)) static void event_execute_rules_on_remove(
                UdevEvent *event,
                usec_t timeout_usec,
                Hashmap *properties_list,
                UdevRules *rules) {

        sd_device *dev = event->dev;
        int r;

        r = device_read_db_internal(dev, 1);
        if (r < 0)
                log_device_debug_errno(dev, r, "Failed to read database under /run/udev/data/: %m");

        r = device_tag_index(dev, ((void*)0), 0);
        if (r < 0)
                log_device_debug_errno(dev, r, "Failed to remove corresponding tag files under /run/udev/tag/, ignoring: %m");

        r = device_delete_db(dev);
        if (r < 0)
                log_device_debug_errno(dev, r, "Failed to delete database under /run/udev/data/, ignoring: %m");

        if (sd_device_get_devnum(dev, ((void*)0)) >= 0)
                (void) udev_watch_end(dev);

        (void) udev_rules_apply_to_event(rules, event, timeout_usec, properties_list);

        if (sd_device_get_devnum(dev, ((void*)0)) >= 0)
                (void) udev_node_remove(dev);
}
