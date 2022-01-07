
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus ;


 int assert (int *) ;
 int bus_log_create_error (int) ;
 int log_error_errno (int,char*) ;
 int sd_bus_get_unique_name (int *,char const**) ;
 int sd_bus_message_append (int *,char*,char*,char*,char const*) ;

__attribute__((used)) static int append_controller_property(sd_bus *bus, sd_bus_message *m) {
        const char *unique;
        int r;

        assert(bus);
        assert(m);

        r = sd_bus_get_unique_name(bus, &unique);
        if (r < 0)
                return log_error_errno(r, "Failed to get unique name: %m");

        r = sd_bus_message_append(m, "(sv)", "Controller", "s", unique);
        if (r < 0)
                return bus_log_create_error(r);

        return 0;
}
