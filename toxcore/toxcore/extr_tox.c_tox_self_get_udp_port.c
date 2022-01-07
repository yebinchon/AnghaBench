
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_6__ {TYPE_1__* net; } ;
typedef TYPE_2__ Tox ;
struct TYPE_5__ {int port; } ;
typedef int TOX_ERR_GET_PORT ;
typedef TYPE_2__ Messenger ;


 int SET_ERROR_PARAMETER (int *,int ) ;
 int TOX_ERR_GET_PORT_NOT_BOUND ;
 int TOX_ERR_GET_PORT_OK ;
 scalar_t__ htons (int ) ;

uint16_t tox_self_get_udp_port(const Tox *tox, TOX_ERR_GET_PORT *error)
{
    const Messenger *m = tox;
    uint16_t port = htons(m->net->port);

    if (port) {
        SET_ERROR_PARAMETER(error, TOX_ERR_GET_PORT_OK);
    } else {
        SET_ERROR_PARAMETER(error, TOX_ERR_GET_PORT_NOT_BOUND);
    }

    return port;
}
