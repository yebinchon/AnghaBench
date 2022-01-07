
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int tcp_server_port; } ;
struct TYPE_6__ {TYPE_1__ options; scalar_t__ tcp_server; } ;
typedef TYPE_2__ Tox ;
typedef int TOX_ERR_GET_PORT ;
typedef TYPE_2__ Messenger ;


 int SET_ERROR_PARAMETER (int *,int ) ;
 int TOX_ERR_GET_PORT_NOT_BOUND ;
 int TOX_ERR_GET_PORT_OK ;

uint16_t tox_self_get_tcp_port(const Tox *tox, TOX_ERR_GET_PORT *error)
{
    const Messenger *m = tox;

    if (m->tcp_server) {
        SET_ERROR_PARAMETER(error, TOX_ERR_GET_PORT_OK);
        return m->options.tcp_server_port;
    } else {
        SET_ERROR_PARAMETER(error, TOX_ERR_GET_PORT_NOT_BOUND);
        return 0;
    }
}
