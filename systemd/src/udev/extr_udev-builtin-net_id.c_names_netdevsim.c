
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netnames {int type; int netdevsim_path; } ;
typedef struct netnames sd_device ;


 int EINVAL ;
 int ENOBUFS ;
 int NAMING_NETDEVSIM ;
 int NET_NETDEVSIM ;
 int assert (struct netnames*) ;
 int naming_scheme_has (int ) ;
 int sd_device_get_parent_with_subsystem_devtype (struct netnames*,char*,int *,struct netnames**) ;
 int sd_device_get_sysattr_value (struct netnames*,char*,char const**) ;
 int sd_device_get_sysname (struct netnames*,char const**) ;
 int snprintf_ok (int ,int,char*,unsigned int,char const*) ;
 int sscanf (char const*,char*,unsigned int*) ;

__attribute__((used)) static int names_netdevsim(sd_device *dev, struct netnames *names) {
        sd_device *netdevsimdev;
        const char *sysname;
        unsigned addr;
        const char *port_name = ((void*)0);
        int r;
        bool ok;

        if (!naming_scheme_has(NAMING_NETDEVSIM))
                return 0;

        assert(dev);
        assert(names);

        r = sd_device_get_parent_with_subsystem_devtype(dev, "netdevsim", ((void*)0), &netdevsimdev);
        if (r < 0)
                return r;
        r = sd_device_get_sysname(netdevsimdev, &sysname);
        if (r < 0)
                return r;

        if (sscanf(sysname, "netdevsim%u", &addr) != 1)
                return -EINVAL;

        r = sd_device_get_sysattr_value(dev, "phys_port_name", &port_name);
        if (r < 0)
                return r;

        ok = snprintf_ok(names->netdevsim_path, sizeof(names->netdevsim_path), "i%un%s", addr, port_name);
        if (!ok)
                return -ENOBUFS;

        names->type = NET_NETDEVSIM;

        return 0;
}
