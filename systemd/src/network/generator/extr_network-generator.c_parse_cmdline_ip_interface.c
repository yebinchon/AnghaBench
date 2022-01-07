
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Context ;


 int AF_UNSPEC ;
 int EINVAL ;
 int network_set_dhcp_type (int *,char const*,char const*) ;
 int parse_cmdline_ip_mtu_mac (int *,char const*,int ,char const*) ;
 char* strchr (char const*,char) ;
 char* strndupa (char const*,int) ;

__attribute__((used)) static int parse_cmdline_ip_interface(Context *context, const char *value) {
        const char *ifname, *dhcp_type, *p;
        int r;



        p = strchr(value, ':');
        if (!p)
                return -EINVAL;

        ifname = strndupa(value, p - value);

        value = p + 1;
        p = strchr(value, ':');
        if (!p)
                dhcp_type = value;
        else
                dhcp_type = strndupa(value, p - value);

        r = network_set_dhcp_type(context, ifname, dhcp_type);
        if (r < 0)
                return r;

        if (!p)
                return 0;

        return parse_cmdline_ip_mtu_mac(context, ifname, AF_UNSPEC, p + 1);
}
