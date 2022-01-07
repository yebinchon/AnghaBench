
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int sock_t ;
struct TYPE_7__ {int sock; } ;
struct TYPE_6__ {scalar_t__ size_accepted_connections; TYPE_3__* accepted_connection_array; } ;
typedef TYPE_1__ TCP_Server ;


 scalar_t__ NUM_CLIENT_CONNECTIONS ;
 scalar_t__ del_accepted (TYPE_1__*,int) ;
 int kill_sock (int ) ;
 int rm_connection_index (TYPE_1__*,TYPE_3__*,scalar_t__) ;

__attribute__((used)) static int kill_accepted(TCP_Server *TCP_server, int index)
{
    if ((uint32_t)index >= TCP_server->size_accepted_connections)
        return -1;

    uint32_t i;

    for (i = 0; i < NUM_CLIENT_CONNECTIONS; ++i) {
        rm_connection_index(TCP_server, &TCP_server->accepted_connection_array[index], i);
    }

    sock_t sock = TCP_server->accepted_connection_array[index].sock;

    if (del_accepted(TCP_server, index) != 0)
        return -1;

    kill_sock(sock);
    return 0;
}
