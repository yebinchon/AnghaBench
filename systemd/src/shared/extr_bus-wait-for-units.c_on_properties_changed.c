
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int WaitForItem ;


 int assert (int *) ;
 int log_debug_errno (int,char*) ;
 int sd_bus_message_read (int *,char*,char const**) ;
 int streq (char const*,char*) ;
 int wait_for_item_parse_properties (int *,int *) ;

__attribute__((used)) static int on_properties_changed(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        WaitForItem *item = userdata;
        const char *interface;
        int r;

        assert(item);

        r = sd_bus_message_read(m, "s", &interface);
        if (r < 0) {
                log_debug_errno(r, "Failed to parse PropertiesChanged signal: %m");
                return 0;
        }

        if (!streq(interface, "org.freedesktop.systemd1.Unit"))
                return 0;

        r = wait_for_item_parse_properties(item, m);
        if (r < 0)
                log_debug_errno(r, "Failed to process PropertiesChanged signal: %m");

        return 0;
}
