
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_6__ {scalar_t__ status; } ;
struct TYPE_5__ {size_t tcp_connections_length; TYPE_2__* tcp_connections; } ;
typedef int TCP_con ;
typedef TYPE_1__ TCP_Connections ;


 scalar_t__ TCP_CONN_NONE ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ realloc_tox_array (TYPE_2__*,int,int,int *) ;

__attribute__((used)) static int create_tcp_connection(TCP_Connections *tcp_c)
{
    uint32_t i;

    for (i = 0; i < tcp_c->tcp_connections_length; ++i) {
        if (tcp_c->tcp_connections[i].status == TCP_CONN_NONE)
            return i;
    }

    int id = -1;

    TCP_con *temp_pointer;

    if (realloc_tox_array(tcp_c->tcp_connections, sizeof(TCP_con), tcp_c->tcp_connections_length + 1, temp_pointer) == 0) {
        id = tcp_c->tcp_connections_length;
        ++tcp_c->tcp_connections_length;
        memset(&(tcp_c->tcp_connections[id]), 0, sizeof(TCP_con));
    }

    return id;
}
