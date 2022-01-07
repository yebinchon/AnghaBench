
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netnames {int type; int bcma_core; } ;
typedef struct netnames sd_device ;


 int EINVAL ;
 int NET_BCMA ;
 int assert (struct netnames*) ;
 int sd_device_get_parent_with_subsystem_devtype (struct netnames*,char*,int *,struct netnames**) ;
 int sd_device_get_sysname (struct netnames*,char const**) ;
 int sscanf (char const*,char*,unsigned int*) ;
 int xsprintf (int ,char*,unsigned int) ;

__attribute__((used)) static int names_bcma(sd_device *dev, struct netnames *names) {
        sd_device *bcmadev;
        unsigned core;
        const char *sysname;
        int r;

        assert(dev);
        assert(names);

        r = sd_device_get_parent_with_subsystem_devtype(dev, "bcma", ((void*)0), &bcmadev);
        if (r < 0)
                return r;

        r = sd_device_get_sysname(bcmadev, &sysname);
        if (r < 0)
                return r;


        if (sscanf(sysname, "bcma%*u:%u", &core) != 1)
                return -EINVAL;

        if (core > 0)
                xsprintf(names->bcma_core, "b%u", core);

        names->type = NET_BCMA;
        return 0;
}
