
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bus; } ;
typedef TYPE_1__ Manager ;


 int assert (TYPE_1__*) ;
 int log_notice_errno (int,char*,char const*) ;
 int sd_bus_emit_properties_changed_strv (int ,char*,char*,char**) ;
 char** strv_from_stdarg_alloca (char const*) ;

int _manager_send_changed(Manager *manager, const char *property, ...) {
        assert(manager);

        char **l = strv_from_stdarg_alloca(property);

        int r = sd_bus_emit_properties_changed_strv(
                        manager->bus,
                        "/org/freedesktop/resolve1",
                        "org.freedesktop.resolve1.Manager",
                        l);
        if (r < 0)
                log_notice_errno(r, "Failed to emit notification about changed property %s: %m", property);
        return r;
}
