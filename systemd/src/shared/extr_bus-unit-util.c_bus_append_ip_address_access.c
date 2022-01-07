
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union in_addr_union {int dummy; } in_addr_union ;
typedef union in_addr_union const sd_bus_message ;


 int FAMILY_ADDRESS_SIZE (int) ;
 int assert (union in_addr_union const*) ;
 int sd_bus_message_append (union in_addr_union const*,char*,unsigned char) ;
 int sd_bus_message_append_array (union in_addr_union const*,char,union in_addr_union const*,int ) ;
 int sd_bus_message_close_container (union in_addr_union const*) ;
 int sd_bus_message_open_container (union in_addr_union const*,char,char*) ;

__attribute__((used)) static int bus_append_ip_address_access(sd_bus_message *m, int family, const union in_addr_union *prefix, unsigned char prefixlen) {
        int r;

        assert(m);
        assert(prefix);

        r = sd_bus_message_open_container(m, 'r', "iayu");
        if (r < 0)
                return r;

        r = sd_bus_message_append(m, "i", family);
        if (r < 0)
                return r;

        r = sd_bus_message_append_array(m, 'y', prefix, FAMILY_ADDRESS_SIZE(family));
        if (r < 0)
                return r;

        r = sd_bus_message_append(m, "u", prefixlen);
        if (r < 0)
                return r;

        return sd_bus_message_close_container(m);
}
