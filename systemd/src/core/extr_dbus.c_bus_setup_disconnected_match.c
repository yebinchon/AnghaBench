
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus ;
typedef int Manager ;


 int assert (int *) ;
 int log_error_errno (int,char*) ;
 int sd_bus_match_signal_async (int *,int *,char*,char*,char*,char*,int ,int *,int *) ;
 int signal_disconnected ;

__attribute__((used)) static int bus_setup_disconnected_match(Manager *m, sd_bus *bus) {
        int r;

        assert(m);
        assert(bus);

        r = sd_bus_match_signal_async(
                        bus,
                        ((void*)0),
                        "org.freedesktop.DBus.Local",
                        "/org/freedesktop/DBus/Local",
                        "org.freedesktop.DBus.Local",
                        "Disconnected",
                        signal_disconnected, ((void*)0), m);
        if (r < 0)
                return log_error_errno(r, "Failed to request match for Disconnected message: %m");

        return 0;
}
