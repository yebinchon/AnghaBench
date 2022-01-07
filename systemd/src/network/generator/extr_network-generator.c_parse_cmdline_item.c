
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Context ;


 int assert (void*) ;
 int parse_cmdline_bond (int *,char const*,char const*) ;
 int parse_cmdline_bridge (int *,char const*,char const*) ;
 int parse_cmdline_ifname (int *,char const*,char const*) ;
 int parse_cmdline_ip (int *,char const*,char const*) ;
 int parse_cmdline_nameserver (int *,char const*,char const*) ;
 int parse_cmdline_rd_peerdns (int *,char const*,char const*) ;
 int parse_cmdline_rd_route (int *,char const*,char const*) ;
 int parse_cmdline_vlan (int *,char const*,char const*) ;
 scalar_t__ streq (char const*,char*) ;

int parse_cmdline_item(const char *key, const char *value, void *data) {
        Context *context = data;

        assert(key);
        assert(data);

        if (streq(key, "ip"))
                return parse_cmdline_ip(context, key, value);
        if (streq(key, "rd.route"))
                return parse_cmdline_rd_route(context, key, value);
        if (streq(key, "nameserver"))
                return parse_cmdline_nameserver(context, key, value);
        if (streq(key, "rd.peerdns"))
                return parse_cmdline_rd_peerdns(context, key, value);
        if (streq(key, "vlan"))
                return parse_cmdline_vlan(context, key, value);
        if (streq(key, "bridge"))
                return parse_cmdline_bridge(context, key, value);
        if (streq(key, "bond"))
                return parse_cmdline_bond(context, key, value);
        if (streq(key, "ifname"))
                return parse_cmdline_ifname(context, key, value);

        return 0;
}
