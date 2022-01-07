
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int assert (char**) ;
 int sd_bus_get_event (int ) ;
 int sd_bus_get_property_string (int ,char*,char*,char*,char*,int *,char**) ;
 int sd_bus_message_get_bus (int *) ;
 int sd_event_exit (int ,int) ;

__attribute__((used)) static int match_startup_finished(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        char **state = userdata;
        int r;

        assert(state);

        r = sd_bus_get_property_string(
                        sd_bus_message_get_bus(m),
                        "org.freedesktop.systemd1",
                        "/org/freedesktop/systemd1",
                        "org.freedesktop.systemd1.Manager",
                        "SystemState",
                        ((void*)0),
                        state);

        sd_event_exit(sd_bus_get_event(sd_bus_message_get_bus(m)), r);
        return 0;
}
