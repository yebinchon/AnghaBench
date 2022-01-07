
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;


 int assert (void*) ;
 int read_dns_server_one (void*,int,void*) ;

__attribute__((used)) static int map_global_current_dns_server(sd_bus *bus, const char *member, sd_bus_message *m, sd_bus_error *error, void *userdata) {
        assert(m);
        assert(userdata);

        return read_dns_server_one(m, 1, userdata);
}
