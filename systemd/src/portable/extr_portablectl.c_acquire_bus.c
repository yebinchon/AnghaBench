
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus ;


 int arg_ask_password ;
 int arg_host ;
 int arg_transport ;
 int assert (int **) ;
 int bus_connect_transport (int ,int ,int,int **) ;
 int log_error_errno (int,char*) ;
 int sd_bus_set_allow_interactive_authorization (int *,int ) ;

__attribute__((used)) static int acquire_bus(sd_bus **bus) {
        int r;

        assert(bus);

        if (*bus)
                return 0;

        r = bus_connect_transport(arg_transport, arg_host, 0, bus);
        if (r < 0)
                return log_error_errno(r, "Failed to connect to bus: %m");

        (void) sd_bus_set_allow_interactive_authorization(*bus, arg_ask_password);

        return 0;
}
