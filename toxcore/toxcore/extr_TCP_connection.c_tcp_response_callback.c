
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {unsigned int custom_uint; int * custom_object; } ;
struct TYPE_4__ {int connection; } ;
typedef TYPE_1__ TCP_con ;
typedef int TCP_Connections ;
typedef int TCP_Connection_to ;
typedef TYPE_2__ TCP_Client_Connection ;


 int TCP_CONNECTIONS_STATUS_REGISTERED ;
 int find_tcp_connection_to (int *,int const*) ;
 int * get_connection (int *,int) ;
 TYPE_1__* get_tcp_connection (int *,unsigned int) ;
 int set_tcp_connection_number (int ,int ,int) ;
 int set_tcp_connection_status (int *,unsigned int,int ,int ) ;

__attribute__((used)) static int tcp_response_callback(void *object, uint8_t connection_id, const uint8_t *public_key)
{
    TCP_Client_Connection *TCP_client_con = object;
    TCP_Connections *tcp_c = TCP_client_con->custom_object;

    unsigned int tcp_connections_number = TCP_client_con->custom_uint;
    TCP_con *tcp_con = get_tcp_connection(tcp_c, tcp_connections_number);

    if (!tcp_con)
        return -1;

    int connections_number = find_tcp_connection_to(tcp_c, public_key);

    if (connections_number == -1)
        return -1;

    TCP_Connection_to *con_to = get_connection(tcp_c, connections_number);

    if (con_to == ((void*)0))
        return -1;

    if (set_tcp_connection_status(con_to, tcp_connections_number, TCP_CONNECTIONS_STATUS_REGISTERED, connection_id) == -1)
        return -1;

    set_tcp_connection_number(tcp_con->connection, connection_id, connections_number);

    return 0;
}
