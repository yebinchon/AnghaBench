
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MonitorNetlinkGroup ;


 int MONITOR_GROUP_KERNEL ;
 int MONITOR_GROUP_NONE ;
 int MONITOR_GROUP_UDEV ;
 int _MONITOR_NETLINK_GROUP_INVALID ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static MonitorNetlinkGroup monitor_netlink_group_from_string(const char *name) {
        if (!name)
                return MONITOR_GROUP_NONE;
        if (streq(name, "udev"))
                return MONITOR_GROUP_UDEV;
        if (streq(name, "kernel"))
                return MONITOR_GROUP_KERNEL;
        return _MONITOR_NETLINK_GROUP_INVALID;
}
