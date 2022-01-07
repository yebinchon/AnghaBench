
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus ;


 int EHOSTDOWN ;
 scalar_t__ IN_SET (int,int ,int ) ;
 scalar_t__ UNIT_FILE_SYSTEM ;
 int arg_host ;
 scalar_t__ arg_scope ;
 int arg_transport ;
 int bus_connect_transport (int ,int ,int,int **) ;
 int bus_connect_transport_systemd (int ,int ,int,int **) ;

__attribute__((used)) static int acquire_bus(sd_bus **bus, bool *use_full_bus) {
        bool user = arg_scope != UNIT_FILE_SYSTEM;
        int r;

        if (use_full_bus && *use_full_bus) {
                r = bus_connect_transport(arg_transport, arg_host, user, bus);
                if (IN_SET(r, 0, -EHOSTDOWN))
                        return r;

                *use_full_bus = 0;
        }

        return bus_connect_transport_systemd(arg_transport, arg_host, user, bus);
}
