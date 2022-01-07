
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;
 char const* IN_SET (int,int,int ) ;
 int WRITE_STRING_FILE_DISABLE_BUFFER ;
 int WRITE_STRING_FILE_VERIFY_ON_FAILURE ;
 int assert (char const*) ;
 int log_debug (char*,char const*,char const*) ;
 int strempty (char const*) ;
 char* strjoina (char*,char*,char*,int ,char*,char const*) ;
 int write_string_file (char const*,char const*,int) ;

int sysctl_write_ip_property(int af, const char *ifname, const char *property, const char *value) {
        const char *p;

        assert(IN_SET(af, AF_INET, AF_INET6));
        assert(property);
        assert(value);

        p = strjoina("/proc/sys/net/ipv", af == AF_INET ? "4" : "6",
                     ifname ? "/conf/" : "", strempty(ifname),
                     property[0] == '/' ? "" : "/", property);

        log_debug("Setting '%s' to '%s'", p, value);

        return write_string_file(p, value, WRITE_STRING_FILE_VERIFY_ON_FAILURE | WRITE_STRING_FILE_DISABLE_BUFFER);
}
