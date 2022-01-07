
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int Context ;


 int assert (int *) ;
 int log_error_errno (int,char*) ;
 int sd_bus_emit_properties_changed (int ,char*,char*,char*,char*,char*,char*,int *) ;
 int sd_bus_message_get_bus (int *) ;
 int vconsole_convert_to_x11 (int *) ;
 int x11_read_data (int *,int *) ;
 int x11_write_data (int *) ;

__attribute__((used)) static int vconsole_convert_to_x11_and_emit(Context *c, sd_bus_message *m) {
        int r;

        assert(m);

        r = x11_read_data(c, m);
        if (r < 0)
                return r;

        r = vconsole_convert_to_x11(c);
        if (r <= 0)
                return r;


        r = x11_write_data(c);
        if (r < 0)
                return log_error_errno(r, "Failed to write X11 keyboard layout: %m");

        sd_bus_emit_properties_changed(sd_bus_message_get_bus(m),
                                       "/org/freedesktop/locale1",
                                       "org.freedesktop.locale1",
                                       "X11Layout", "X11Model", "X11Variant", "X11Options", ((void*)0));

        return 1;
}
