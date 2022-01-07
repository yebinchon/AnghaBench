
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NetDev ;
typedef int Context ;


 int EINVAL ;
 int * netdev_get (int *,char const*) ;
 int netdev_new (int *,char*,char const*,int **) ;
 int network_set_vlan (int *,char const*,char const*) ;
 scalar_t__ proc_cmdline_value_missing (char const*,char const*) ;
 char* strchr (char const*,char) ;
 char* strndupa (char const*,int) ;

__attribute__((used)) static int parse_cmdline_vlan(Context *context, const char *key, const char *value) {
        const char *name, *p;
        NetDev *netdev;
        int r;

        if (proc_cmdline_value_missing(key, value))
                return -EINVAL;

        p = strchr(value, ':');
        if (!p)
                return -EINVAL;

        name = strndupa(value, p - value);

        netdev = netdev_get(context, name);
        if (!netdev) {
                r = netdev_new(context, "vlan", name, &netdev);
                if (r < 0)
                        return r;
        }

        return network_set_vlan(context, p + 1, name);
}
