
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netnames {int type; int vio_slot; } ;
typedef int sd_device ;


 int EINVAL ;
 int ENOENT ;
 int NET_VIO ;
 int sd_device_get_parent (int *,int **) ;
 int sd_device_get_subsystem (int *,char const**) ;
 int sd_device_get_syspath (int *,char const**) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*) ;
 int streq (char*,char const*) ;
 int xsprintf (int ,char*,unsigned int) ;

__attribute__((used)) static int names_vio(sd_device *dev, struct netnames *names) {
        sd_device *parent;
        unsigned busid, slotid, ethid;
        const char *syspath, *subsystem;
        int r;


        r = sd_device_get_parent(dev, &parent);
        if (r < 0)
                return r;

        r = sd_device_get_subsystem(parent, &subsystem);
        if (r < 0)
                return r;
        if (!streq("vio", subsystem))
                return -ENOENT;





        r = sd_device_get_syspath(dev, &syspath);
        if (r < 0)
                return r;

        if (sscanf(syspath, "/sys/devices/vio/%4x%4x/net/eth%u", &busid, &slotid, &ethid) != 3)
                return -EINVAL;

        xsprintf(names->vio_slot, "v%u", slotid);
        names->type = NET_VIO;
        return 0;
}
