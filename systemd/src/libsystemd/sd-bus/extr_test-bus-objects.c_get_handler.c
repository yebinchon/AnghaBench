
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {int something; } ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;


 int assert_se (int) ;
 int log_info (char*,char const*,int ) ;
 int sd_bus_message_append (int *,char*,int ) ;

__attribute__((used)) static int get_handler(sd_bus *bus, const char *path, const char *interface, const char *property, sd_bus_message *reply, void *userdata, sd_bus_error *error) {
        struct context *c = userdata;
        int r;

        log_info("property get for %s called, returning \"%s\".", property, c->something);

        r = sd_bus_message_append(reply, "s", c->something);
        assert_se(r >= 0);

        return 1;
}
