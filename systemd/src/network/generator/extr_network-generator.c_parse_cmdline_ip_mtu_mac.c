
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Context ;


 int network_set_mac_address (int *,char const*,char const*) ;
 int network_set_mtu (int *,char const*,int,char const*) ;
 char* strchr (char const*,char) ;
 char* strndupa (char const*,int) ;

__attribute__((used)) static int parse_cmdline_ip_mtu_mac(Context *context, const char *ifname, int family, const char *value) {
        const char *mtu, *p;
        int r;



        p = strchr(value, ':');
        if (!p)
                mtu = value;
        else
                mtu = strndupa(value, p - value);

        r = network_set_mtu(context, ifname, family, mtu);
        if (r < 0)
                return r;

        if (!p)
                return 0;

        r = network_set_mac_address(context, ifname, p + 1);
        if (r < 0)
                return r;

        return 0;
}
