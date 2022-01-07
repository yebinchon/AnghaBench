
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netnames {int * mac; int mac_valid; } ;
typedef int sd_device ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ memcmp (int *,char*,int) ;
 int udev_builtin_hwdb_lookup (int *,int *,char*,int *,int) ;
 int xsprintf (char*,char*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int ieee_oui(sd_device *dev, struct netnames *names, bool test) {
        char str[32];

        if (!names->mac_valid)
                return -ENOENT;

        if (memcmp(names->mac, "\0\0\0", 3) == 0)
                return -EINVAL;
        xsprintf(str, "OUI:%02X%02X%02X%02X%02X%02X", names->mac[0],
                 names->mac[1], names->mac[2], names->mac[3], names->mac[4],
                 names->mac[5]);
        udev_builtin_hwdb_lookup(dev, ((void*)0), str, ((void*)0), test);
        return 0;
}
