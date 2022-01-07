
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {void* ifr_data; int ifr_name; } ;
struct ethtool_drvinfo {int driver; int cmd; } ;


 int ENOMEM ;
 int ETHTOOL_GDRVINFO ;
 int IFNAMSIZ ;
 int SIOCETHTOOL ;
 int errno ;
 int ethtool_connect_or_warn (int*,int) ;
 int ioctl (int,int ,struct ifreq*) ;
 char* strdup (int ) ;
 int strscpy (int ,int ,char const*) ;

int ethtool_get_driver(int *fd, const char *ifname, char **ret) {
        struct ethtool_drvinfo ecmd = {
                .cmd = ETHTOOL_GDRVINFO
        };
        struct ifreq ifr = {
                .ifr_data = (void*) &ecmd
        };
        char *d;
        int r;

        if (*fd < 0) {
                r = ethtool_connect_or_warn(fd, 1);
                if (r < 0)
                        return r;
        }

        strscpy(ifr.ifr_name, IFNAMSIZ, ifname);

        r = ioctl(*fd, SIOCETHTOOL, &ifr);
        if (r < 0)
                return -errno;

        d = strdup(ecmd.driver);
        if (!d)
                return -ENOMEM;

        *ret = d;
        return 0;
}
