
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Context ;


 int EINVAL ;
 int network_set_dns (int *,char*,char const*) ;
 scalar_t__ proc_cmdline_value_missing (char const*,char const*) ;

__attribute__((used)) static int parse_cmdline_nameserver(Context *context, const char *key, const char *value) {
        if (proc_cmdline_value_missing(key, value))
                return -EINVAL;

        return network_set_dns(context, "", value);
}
