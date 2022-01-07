
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus ;
typedef size_t BusFocus ;


 size_t BUS_FULL ;
 size_t BUS_MANAGER ;
 scalar_t__ BUS_TRANSPORT_LOCAL ;
 scalar_t__ UNIT_FILE_SYSTEM ;
 size_t _BUS_FOCUS_MAX ;
 int arg_ask_password ;
 int arg_host ;
 scalar_t__ arg_scope ;
 scalar_t__ arg_transport ;
 int assert (int) ;
 int bus_connect_transport (scalar_t__,int ,int,int **) ;
 int bus_connect_transport_systemd (scalar_t__,int ,int,int **) ;
 int ** buses ;
 scalar_t__ getenv_bool (char*) ;
 int log_error_errno (int,char*) ;
 int sd_bus_set_allow_interactive_authorization (int *,int ) ;

__attribute__((used)) static int acquire_bus(BusFocus focus, sd_bus **ret) {
        int r;

        assert(focus < _BUS_FOCUS_MAX);
        assert(ret);


        if (arg_transport != BUS_TRANSPORT_LOCAL)
                focus = BUS_FULL;

        if (getenv_bool("SYSTEMCTL_FORCE_BUS") > 0)
                focus = BUS_FULL;

        if (!buses[focus]) {
                bool user;

                user = arg_scope != UNIT_FILE_SYSTEM;

                if (focus == BUS_MANAGER)
                        r = bus_connect_transport_systemd(arg_transport, arg_host, user, &buses[focus]);
                else
                        r = bus_connect_transport(arg_transport, arg_host, user, &buses[focus]);
                if (r < 0)
                        return log_error_errno(r, "Failed to connect to bus: %m");

                (void) sd_bus_set_allow_interactive_authorization(buses[focus], arg_ask_password);
        }

        *ret = buses[focus];
        return 0;
}
