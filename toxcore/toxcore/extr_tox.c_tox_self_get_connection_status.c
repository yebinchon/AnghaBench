
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int onion_c; } ;
typedef TYPE_1__ Tox ;
typedef int TOX_CONNECTION ;
typedef TYPE_1__ Messenger ;


 int TOX_CONNECTION_NONE ;
 int TOX_CONNECTION_TCP ;
 int TOX_CONNECTION_UDP ;
 unsigned int onion_connection_status (int ) ;

TOX_CONNECTION tox_self_get_connection_status(const Tox *tox)
{
    const Messenger *m = tox;

    unsigned int ret = onion_connection_status(m->onion_c);

    if (ret == 2) {
        return TOX_CONNECTION_UDP;
    } else if (ret == 1) {
        return TOX_CONNECTION_TCP;
    } else {
        return TOX_CONNECTION_NONE;
    }
}
