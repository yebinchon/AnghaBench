
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int id; int public_key; int status; } ;
struct TYPE_6__ {TYPE_2__* connections; } ;
typedef TYPE_1__ TCP_Connections ;
typedef TYPE_2__ TCP_Connection_to ;


 int TCP_CONN_VALID ;
 int create_connection (TYPE_1__*) ;
 int crypto_box_PUBLICKEYBYTES ;
 int find_tcp_connection_to (TYPE_1__*,int const*) ;
 int memcpy (int ,int const*,int ) ;

int new_tcp_connection_to(TCP_Connections *tcp_c, const uint8_t *public_key, int id)
{
    if (find_tcp_connection_to(tcp_c, public_key) != -1)
        return -1;

    int connections_number = create_connection(tcp_c);

    if (connections_number == -1)
        return -1;

    TCP_Connection_to *con_to = &tcp_c->connections[connections_number];

    con_to->status = TCP_CONN_VALID;
    memcpy(con_to->public_key, public_key, crypto_box_PUBLICKEYBYTES);
    con_to->id = id;

    return connections_number;
}
