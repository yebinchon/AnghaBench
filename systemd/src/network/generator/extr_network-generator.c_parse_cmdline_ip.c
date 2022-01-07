
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Context ;


 int AF_INET ;
 int AF_INET6 ;
 int EINVAL ;
 int network_set_dhcp_type (int *,char*,char const*) ;
 int parse_cmdline_ip_address (int *,int ,char const*) ;
 int parse_cmdline_ip_interface (int *,char const*) ;
 scalar_t__ proc_cmdline_value_missing (char const*,char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int parse_cmdline_ip(Context *context, const char *key, const char *value) {
        const char *p;
        int r;

        if (proc_cmdline_value_missing(key, value))
                return -EINVAL;

        p = strchr(value, ':');
        if (!p)

                return network_set_dhcp_type(context, "", value);

        if (value[0] == '[')
                return parse_cmdline_ip_address(context, AF_INET6, value);

        r = parse_cmdline_ip_address(context, AF_INET, value);
        if (r < 0)
                return parse_cmdline_ip_interface(context, value);

        return 0;
}
