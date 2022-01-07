
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int assert (int *) ;
 int log_error_errno (int,char*) ;
 int sd_bus_message_get_bus (int *) ;
 int sd_bus_message_read (int *,char*,char const**) ;
 int show_timesync_status_once (int ) ;
 int streq_ptr (char const*,char*) ;

__attribute__((used)) static int on_properties_changed(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        const char *name;
        int r;

        assert(m);

        r = sd_bus_message_read(m, "s", &name);
        if (r < 0)
                return log_error_errno(r, "Failed to read interface name: %m");

        if (!streq_ptr(name, "org.freedesktop.timesync1.Manager"))
                return 0;

        return show_timesync_status_once(sd_bus_message_get_bus(m));
}
