
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_device ;
struct TYPE_3__ {int swaps_by_devnode; } ;
typedef int Swap ;
typedef TYPE_1__ Manager ;


 int * hashmap_get (int ,char const*) ;
 int sd_device_get_devname (int *,char const**) ;
 int swap_set_devnode (int *,int *) ;

int swap_process_device_remove(Manager *m, sd_device *dev) {
        const char *dn;
        int r = 0;
        Swap *s;

        r = sd_device_get_devname(dev, &dn);
        if (r < 0)
                return 0;

        while ((s = hashmap_get(m->swaps_by_devnode, dn))) {
                int q;

                q = swap_set_devnode(s, ((void*)0));
                if (q < 0)
                        r = q;
        }

        return r;
}
