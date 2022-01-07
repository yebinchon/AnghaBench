
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus ;


 int assert (int *) ;
 int sd_bus_emit_properties_changed_strv (int *,char*,char*,int *) ;

__attribute__((used)) static int send_changed_signal(sd_bus *bus, void *userdata) {
        assert(bus);

        return sd_bus_emit_properties_changed_strv(bus,
                                                   "/org/freedesktop/systemd1",
                                                   "org.freedesktop.systemd1.Manager",
                                                   ((void*)0));
}
