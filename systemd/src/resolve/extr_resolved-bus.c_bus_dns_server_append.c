
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_bus_message ;
struct TYPE_4__ {int family; int address; } ;
typedef TYPE_1__ DnsServer ;


 int AF_UNSPEC ;
 int FAMILY_ADDRESS_SIZE (int ) ;
 int assert (int *) ;
 int dns_server_ifindex (TYPE_1__*) ;
 int sd_bus_message_append (int *,char*,int ,...) ;
 int sd_bus_message_append_array (int *,char,int *,int ) ;
 int sd_bus_message_close_container (int *) ;
 int sd_bus_message_open_container (int *,char,char*) ;

int bus_dns_server_append(sd_bus_message *reply, DnsServer *s, bool with_ifindex) {
        int r;

        assert(reply);

        if (!s) {
                if (with_ifindex)
                        return sd_bus_message_append(reply, "(iiay)", 0, AF_UNSPEC, 0);
                else
                        return sd_bus_message_append(reply, "(iay)", AF_UNSPEC, 0);
        }

        r = sd_bus_message_open_container(reply, 'r', with_ifindex ? "iiay" : "iay");
        if (r < 0)
                return r;

        if (with_ifindex) {
                r = sd_bus_message_append(reply, "i", dns_server_ifindex(s));
                if (r < 0)
                        return r;
        }

        r = sd_bus_message_append(reply, "i", s->family);
        if (r < 0)
                return r;

        r = sd_bus_message_append_array(reply, 'y', &s->address, FAMILY_ADDRESS_SIZE(s->family));
        if (r < 0)
                return r;

        return sd_bus_message_close_container(reply);
}
