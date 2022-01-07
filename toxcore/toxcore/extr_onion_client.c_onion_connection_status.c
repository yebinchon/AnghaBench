
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ onion_connected; scalar_t__ UDP_connected; } ;
typedef TYPE_1__ Onion_Client ;


 scalar_t__ ONION_CONNECTION_SECONDS ;

unsigned int onion_connection_status(const Onion_Client *onion_c)
{
    if (onion_c->onion_connected >= ONION_CONNECTION_SECONDS) {
        if (onion_c->UDP_connected) {
            return 2;
        } else {
            return 1;
        }
    }

    return 0;
}
