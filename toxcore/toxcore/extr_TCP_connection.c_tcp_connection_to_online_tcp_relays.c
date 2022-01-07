
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCP_Connections ;
typedef int TCP_Connection_to ;


 int * get_connection (int *,int) ;
 unsigned int online_tcp_connection_from_conn (int *) ;

unsigned int tcp_connection_to_online_tcp_relays(TCP_Connections *tcp_c, int connections_number)
{
    TCP_Connection_to *con_to = get_connection(tcp_c, connections_number);

    if (!con_to)
        return 0;

    return online_tcp_connection_from_conn(con_to);
}
