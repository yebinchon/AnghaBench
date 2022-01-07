
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
typedef int DnsServer ;


 int assert (void*) ;
 int bus_dns_server_append (void*,int *,int) ;

__attribute__((used)) static int bus_property_get_current_dns_server(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        DnsServer *s;

        assert(reply);
        assert(userdata);

        s = *(DnsServer **) userdata;

        return bus_dns_server_append(reply, s, 1);
}
