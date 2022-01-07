
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BusTransport ;


 scalar_t__ BUS_TRANSPORT_LOCAL ;
 int polkit_agent_open () ;

int polkit_agent_open_if_enabled(BusTransport transport, bool ask_password) {



        if (transport != BUS_TRANSPORT_LOCAL)
                return 0;

        if (!ask_password)
                return 0;

        return polkit_agent_open();
}
