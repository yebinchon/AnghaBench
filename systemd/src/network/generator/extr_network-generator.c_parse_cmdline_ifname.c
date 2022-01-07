
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ether_addr {int dummy; } ;
typedef int Context ;


 int EINVAL ;
 int ether_addr_from_string (char const*,struct ether_addr*) ;
 int link_new (int *,char const*,struct ether_addr*,int *) ;
 scalar_t__ proc_cmdline_value_missing (char const*,char const*) ;
 char* strchr (char const*,char) ;
 char* strndupa (char const*,int) ;

__attribute__((used)) static int parse_cmdline_ifname(Context *context, const char *key, const char *value) {
        struct ether_addr mac;
        const char *name, *p;
        int r;



        if (proc_cmdline_value_missing(key, value))
                return -EINVAL;

        p = strchr(value, ':');
        if (!p)
                return -EINVAL;

        name = strndupa(value, p - value);

        r = ether_addr_from_string(p + 1, &mac);
        if (r < 0)
                return r;

        return link_new(context, name, &mac, ((void*)0));
}
