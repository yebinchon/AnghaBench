
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union in_addr_union {int dummy; } in_addr_union ;
typedef int Context ;


 int AF_UNSPEC ;
 int EINVAL ;
 int hostname_is_valid (char const*,int) ;
 int network_set_address (int *,char const*,int,unsigned char,union in_addr_union*,union in_addr_union*) ;
 int network_set_dhcp_type (int *,char const*,char const*) ;
 int network_set_dns (int *,char const*,char const*) ;
 int network_set_hostname (int *,char const*,char const*) ;
 int network_set_route (int *,char const*,int,int ,int *,union in_addr_union*) ;
 int parse_cmdline_ip_mtu_mac (int *,char const*,int ,char const*) ;
 int parse_ip_address_one (int,char const**,union in_addr_union*) ;
 int parse_netmask_or_prefixlen (int,char const**,unsigned char*) ;
 char* strchr (char const*,char) ;
 char* strndupa (char const*,int) ;

__attribute__((used)) static int parse_cmdline_ip_address(Context *context, int family, const char *value) {
        union in_addr_union addr = {}, peer = {}, gateway = {};
        const char *hostname, *ifname, *dhcp_type, *dns, *p;
        unsigned char prefixlen;
        int r;




        r = parse_ip_address_one(family, &value, &addr);
        if (r < 0)
                return r;
        r = parse_ip_address_one(family, &value, &peer);
        if (r < 0)
                return r;
        r = parse_ip_address_one(family, &value, &gateway);
        if (r < 0)
                return r;
        r = parse_netmask_or_prefixlen(family, &value, &prefixlen);
        if (r < 0)
                return r;


        p = strchr(value, ':');
        if (!p)
                return -EINVAL;

        hostname = strndupa(value, p - value);
        if (!hostname_is_valid(hostname, 0))
                return -EINVAL;

        value = p + 1;


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


        r = network_set_hostname(context, ifname, hostname);
        if (r < 0)
                return r;

        r = network_set_address(context, ifname, family, prefixlen, &addr, &peer);
        if (r < 0)
                return r;

        r = network_set_route(context, ifname, family, 0, ((void*)0), &gateway);
        if (r < 0)
                return r;

        if (!p)
                return 0;


        r = parse_cmdline_ip_mtu_mac(context, ifname, AF_UNSPEC, p + 1);
        if (r >= 0)
                return 0;


        value = p + 1;
        p = strchr(value, ':');
        if (!p) {
                r = network_set_dns(context, ifname, value);
                if (r < 0)
                        return r;
        } else {
                dns = strndupa(value, p - value);
                r = network_set_dns(context, ifname, dns);
                if (r < 0)
                        return r;
                r = network_set_dns(context, ifname, p + 1);
                if (r < 0)
                        return r;
        }

        return 0;
}
