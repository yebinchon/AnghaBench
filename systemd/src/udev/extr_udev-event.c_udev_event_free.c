
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; int program_result; int seclabel_list; int run_list; int rtnl; int dev_db_clone; int dev; } ;
typedef TYPE_1__ UdevEvent ;


 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int ordered_hashmap_free_free_free (int ) ;
 int ordered_hashmap_free_free_key (int ) ;
 int sd_device_unref (int ) ;
 int sd_netlink_unref (int ) ;

UdevEvent *udev_event_free(UdevEvent *event) {
        if (!event)
                return ((void*)0);

        sd_device_unref(event->dev);
        sd_device_unref(event->dev_db_clone);
        sd_netlink_unref(event->rtnl);
        ordered_hashmap_free_free_key(event->run_list);
        ordered_hashmap_free_free_free(event->seclabel_list);
        free(event->program_result);
        free(event->name);

        return mfree(event);
}
