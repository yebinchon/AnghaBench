
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int name; int unit_file_state; } ;
typedef TYPE_1__ sd_bus_error ;
typedef TYPE_1__ sd_bus ;
typedef TYPE_1__ UnitStatusInfo ;


 int assert (TYPE_1__*) ;
 int enable_disable (int) ;
 int log_unit_debug (TYPE_1__*,char*,int ) ;
 int log_unit_info (TYPE_1__*,char*,char*) ;
 int sd_bus_call_method (TYPE_1__*,char*,char*,char*,char*,TYPE_1__*,int *,char*,...) ;
 int streq (int ,char*) ;

__attribute__((used)) static int unit_enable_or_disable(UnitStatusInfo *u, sd_bus *bus, sd_bus_error *error, bool enable) {
        int r;

        assert(u);
        assert(bus);
        assert(error);



        if (streq(u->unit_file_state, "enabled") == enable) {
                log_unit_debug(u, "already %sd.", enable_disable(enable));
                return 0;
        }

        log_unit_info(u, "%s unit.", enable ? "Enabling" : "Disabling");

        if (enable)
                r = sd_bus_call_method(
                                bus,
                                "org.freedesktop.systemd1",
                                "/org/freedesktop/systemd1",
                                "org.freedesktop.systemd1.Manager",
                                "EnableUnitFiles",
                                error,
                                ((void*)0),
                                "asbb", 1,
                                u->name,
                                0, 1);
        else
                r = sd_bus_call_method(
                                bus,
                                "org.freedesktop.systemd1",
                                "/org/freedesktop/systemd1",
                                "org.freedesktop.systemd1.Manager",
                                "DisableUnitFiles",
                                error,
                                ((void*)0),
                                "asb", 1,
                                u->name,
                                0);
        if (r < 0)
                return r;

        r = sd_bus_call_method(
                        bus,
                        "org.freedesktop.systemd1",
                        "/org/freedesktop/systemd1",
                        "org.freedesktop.systemd1.Manager",
                        "Reload",
                        error,
                        ((void*)0),
                        ((void*)0));
        if (r < 0)
                return r;

        return 0;
}
