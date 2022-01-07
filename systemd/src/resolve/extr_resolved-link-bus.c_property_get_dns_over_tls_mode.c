
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
typedef int Link ;


 int assert (int *) ;
 int dns_over_tls_mode_to_string (int ) ;
 int link_get_dns_over_tls_mode (int *) ;
 int sd_bus_message_append (int *,char*,int ) ;

__attribute__((used)) static int property_get_dns_over_tls_mode(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Link *l = userdata;

        assert(reply);
        assert(l);

        return sd_bus_message_append(reply, "s", dns_over_tls_mode_to_string(link_get_dns_over_tls_mode(l)));
}
