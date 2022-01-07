
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_device ;
struct TYPE_3__ {int name; int rtnl; int * dev; } ;
typedef TYPE_1__ UdevEvent ;


 int DEVICE_ACTION_ADD ;
 int ENOENT ;
 int device_add_property (int *,char*,char*) ;
 int device_for_action (int *,int ) ;
 int device_rename (int *,int ) ;
 int log_device_debug (int *,char*,int,char const*,int ) ;
 int log_device_error_errno (int *,int,char*,...) ;
 int log_device_warning_errno (int *,int,char*,...) ;
 int rtnl_set_link_name (int *,int,int ) ;
 int sd_device_get_ifindex (int *,int*) ;
 int sd_device_get_sysname (int *,char const**) ;
 scalar_t__ streq (int ,char const*) ;

__attribute__((used)) static int rename_netif(UdevEvent *event) {
        sd_device *dev = event->dev;
        const char *oldname;
        int ifindex, r;

        if (!event->name)
                return 0;

        r = sd_device_get_sysname(dev, &oldname);
        if (r < 0)
                return log_device_error_errno(dev, r, "Failed to get sysname: %m");

        if (streq(event->name, oldname))
                return 0;

        if (!device_for_action(dev, DEVICE_ACTION_ADD))
                return 0;

        r = sd_device_get_ifindex(dev, &ifindex);
        if (r == -ENOENT)
                return 0;
        if (r < 0)
                return log_device_error_errno(dev, r, "Failed to get ifindex: %m");

        r = rtnl_set_link_name(&event->rtnl, ifindex, event->name);
        if (r < 0)
                return log_device_error_errno(dev, r, "Failed to rename network interface %i from '%s' to '%s': %m",
                                              ifindex, oldname, event->name);


        r = device_add_property(dev, "ID_RENAMING", "1");
        if (r < 0)
                return log_device_warning_errno(dev, r, "Failed to add 'ID_RENAMING' property: %m");

        r = device_rename(dev, event->name);
        if (r < 0)
                return log_device_warning_errno(dev, r, "Failed to update properties with new name '%s': %m", event->name);

        log_device_debug(dev, "Network interface %i is renamed from '%s' to '%s'", ifindex, oldname, event->name);

        return 1;
}
