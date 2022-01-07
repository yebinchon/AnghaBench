
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netnames {unsigned int* mac; int mac_valid; } ;
typedef int sd_device ;



 int EINVAL ;
 int sd_device_get_sysattr_value (int *,char*,char const**) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 unsigned long strtoul (char const*,int *,int ) ;

__attribute__((used)) static int names_mac(sd_device *dev, struct netnames *names) {
        const char *s;
        unsigned long i;
        unsigned a1, a2, a3, a4, a5, a6;
        int r;




        r = sd_device_get_sysattr_value(dev, "type", &s);
        if (r < 0)
                return r;

        i = strtoul(s, ((void*)0), 0);
        switch (i) {



        case 128:
                return -EINVAL;
        default:
                break;
        }


        r = sd_device_get_sysattr_value(dev, "addr_assign_type", &s);
        if (r < 0)
                return r;
        i = strtoul(s, ((void*)0), 0);
        if (i != 0)
                return 0;

        r = sd_device_get_sysattr_value(dev, "address", &s);
        if (r < 0)
                return r;
        if (sscanf(s, "%x:%x:%x:%x:%x:%x", &a1, &a2, &a3, &a4, &a5, &a6) != 6)
                return -EINVAL;


        if (a1 + a2 + a3 + a4 + a5 + a6 == 0)
                return -EINVAL;

        names->mac[0] = a1;
        names->mac[1] = a2;
        names->mac[2] = a3;
        names->mac[3] = a4;
        names->mac[4] = a5;
        names->mac[5] = a6;
        names->mac_valid = 1;
        return 0;
}
