
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int Context ;


 int assert (int *) ;
 int log_error_errno (int,char*) ;
 int sd_bus_emit_properties_changed (int ,char*,char*,char*,char*,int *) ;
 int sd_bus_message_get_bus (int *) ;
 int vconsole_read_data (int *,int *) ;
 int vconsole_reload (int ) ;
 int vconsole_write_data (int *) ;
 int x11_convert_to_vconsole (int *) ;

__attribute__((used)) static int x11_convert_to_vconsole_and_emit(Context *c, sd_bus_message *m) {
        int r;

        assert(m);

        r = vconsole_read_data(c, m);
        if (r < 0)
                return r;

        r = x11_convert_to_vconsole(c);
        if (r <= 0)
                return r;


        r = vconsole_write_data(c);
        if (r < 0)
                log_error_errno(r, "Failed to save virtual console keymap: %m");

        sd_bus_emit_properties_changed(sd_bus_message_get_bus(m),
                                       "/org/freedesktop/locale1",
                                       "org.freedesktop.locale1",
                                       "VConsoleKeymap", "VConsoleKeymapToggle", ((void*)0));

        return vconsole_reload(sd_bus_message_get_bus(m));
}
