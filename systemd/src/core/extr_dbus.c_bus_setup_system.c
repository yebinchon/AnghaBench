
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus ;
typedef int Manager ;


 scalar_t__ MANAGER_IS_USER (int *) ;
 int assert (int *) ;
 int log_debug (char*) ;
 int log_warning_errno (int,char*) ;
 int sd_bus_match_signal_async (int *,int *,int *,char*,char*,char*,int ,int *,int *) ;
 int signal_agent_released ;

__attribute__((used)) static int bus_setup_system(Manager *m, sd_bus *bus) {
        int r;

        assert(m);
        assert(bus);


        if (MANAGER_IS_USER(m)) {
                r = sd_bus_match_signal_async(
                                bus,
                                ((void*)0),
                                ((void*)0),
                                "/org/freedesktop/systemd1/agent",
                                "org.freedesktop.systemd1.Agent",
                                "Released",
                                signal_agent_released, ((void*)0), m);
                if (r < 0)
                        log_warning_errno(r, "Failed to request Released match on system bus: %m");
        }

        log_debug("Successfully connected to system bus.");
        return 0;
}
