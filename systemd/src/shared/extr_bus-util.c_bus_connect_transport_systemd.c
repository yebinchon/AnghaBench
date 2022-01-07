
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus ;
typedef int BusTransport ;





 int EHOSTDOWN ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int SYNTHETIC_ERRNO (int ) ;
 int _BUS_TRANSPORT_MAX ;
 int assert (int) ;
 int assert_not_reached (char*) ;
 int assert_return (int,int ) ;
 int bus_connect_system_systemd (int **) ;
 int bus_connect_user_systemd (int **) ;
 int log_error_errno (int ,char*) ;
 int sd_booted () ;
 int sd_bus_open_system_machine (int **,char const*) ;
 int sd_bus_open_system_remote (int **,char const*) ;

int bus_connect_transport_systemd(BusTransport transport, const char *host, bool user, sd_bus **bus) {
        int r;

        assert(transport >= 0);
        assert(transport < _BUS_TRANSPORT_MAX);
        assert(bus);

        assert_return((transport == 130) == !host, -EINVAL);
        assert_return(transport == 130 || !user, -EOPNOTSUPP);

        switch (transport) {

        case 130:
                if (user)
                        r = bus_connect_user_systemd(bus);
                else {
                        if (sd_booted() <= 0)

                                return log_error_errno(SYNTHETIC_ERRNO(EHOSTDOWN),
                                                       "System has not been booted with systemd as init system (PID 1). Can't operate.");
                        r = bus_connect_system_systemd(bus);
                }
                break;

        case 128:
                r = sd_bus_open_system_remote(bus, host);
                break;

        case 129:
                r = sd_bus_open_system_machine(bus, host);
                break;

        default:
                assert_not_reached("Hmm, unknown transport type.");
        }

        return r;
}
