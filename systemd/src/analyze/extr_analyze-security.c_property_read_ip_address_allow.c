
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union in_addr_union {int in6; int in; } ;
typedef int uint32_t ;
struct security_info {int ip_address_allow_other; int ip_address_allow_localhost; int ip_address_deny_all; } ;
typedef char const sd_bus_message ;
typedef int sd_bus_error ;
typedef char const sd_bus ;
typedef scalar_t__ int32_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int assert (char const*) ;
 scalar_t__ in_addr_is_localhost (scalar_t__,union in_addr_union*) ;
 int memcpy (int *,void const*,size_t) ;
 int sd_bus_message_enter_container (char const*,char,char*) ;
 int sd_bus_message_exit_container (char const*) ;
 int sd_bus_message_read (char const*,char*,...) ;
 int sd_bus_message_read_array (char const*,char,void const**,size_t*) ;
 char const* streq (char const*,char*) ;

__attribute__((used)) static int property_read_ip_address_allow(
                sd_bus *bus,
                const char *member,
                sd_bus_message *m,
                sd_bus_error *error,
                void *userdata) {

        struct security_info *info = userdata;
        bool deny_ipv4 = 0, deny_ipv6 = 0;
        int r;

        assert(bus);
        assert(member);
        assert(m);

        r = sd_bus_message_enter_container(m, 'a', "(iayu)");
        if (r < 0)
                return r;

        for (;;) {
                const void *data;
                size_t size;
                int32_t family;
                uint32_t prefixlen;

                r = sd_bus_message_enter_container(m, 'r', "iayu");
                if (r < 0)
                        return r;
                if (r == 0)
                        break;

                r = sd_bus_message_read(m, "i", &family);
                if (r < 0)
                        return r;

                r = sd_bus_message_read_array(m, 'y', &data, &size);
                if (r < 0)
                        return r;

                r = sd_bus_message_read(m, "u", &prefixlen);
                if (r < 0)
                        return r;

                r = sd_bus_message_exit_container(m);
                if (r < 0)
                        return r;

                if (streq(member, "IPAddressAllow")) {
                        union in_addr_union u;

                        if (family == AF_INET && size == 4 && prefixlen == 8)
                                memcpy(&u.in, data, size);
                        else if (family == AF_INET6 && size == 16 && prefixlen == 128)
                                memcpy(&u.in6, data, size);
                        else {
                                info->ip_address_allow_other = 1;
                                continue;
                        }

                        if (in_addr_is_localhost(family, &u))
                                info->ip_address_allow_localhost = 1;
                        else
                                info->ip_address_allow_other = 1;
                } else {
                        assert(streq(member, "IPAddressDeny"));

                        if (family == AF_INET && size == 4 && prefixlen == 0)
                                deny_ipv4 = 1;
                        else if (family == AF_INET6 && size == 16 && prefixlen == 0)
                                deny_ipv6 = 1;
                }
        }

        info->ip_address_deny_all = deny_ipv4 && deny_ipv6;

        return sd_bus_message_exit_container(m);
}
