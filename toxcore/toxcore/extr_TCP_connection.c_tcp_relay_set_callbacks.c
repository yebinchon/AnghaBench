
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int custom_uint; int * custom_object; } ;
struct TYPE_13__ {TYPE_2__* connection; } ;
typedef TYPE_1__ TCP_con ;
typedef int TCP_Connections ;
typedef TYPE_2__ TCP_Client_Connection ;


 TYPE_1__* get_tcp_connection (int *,int) ;
 int onion_response_handler (TYPE_2__*,int *,int *) ;
 int oob_data_handler (TYPE_2__*,int *,TYPE_2__*) ;
 int routing_data_handler (TYPE_2__*,int *,TYPE_2__*) ;
 int routing_response_handler (TYPE_2__*,int *,TYPE_2__*) ;
 int routing_status_handler (TYPE_2__*,int *,TYPE_2__*) ;
 int tcp_data_callback ;
 int tcp_onion_callback ;
 int tcp_oob_callback ;
 int tcp_response_callback ;
 int tcp_status_callback ;

__attribute__((used)) static int tcp_relay_set_callbacks(TCP_Connections *tcp_c, int tcp_connections_number)
{
    TCP_con *tcp_con = get_tcp_connection(tcp_c, tcp_connections_number);

    if (!tcp_con)
        return -1;

    TCP_Client_Connection *con = tcp_con->connection;

    con->custom_object = tcp_c;
    con->custom_uint = tcp_connections_number;
    onion_response_handler(con, &tcp_onion_callback, tcp_c);
    routing_response_handler(con, &tcp_response_callback, con);
    routing_status_handler(con, &tcp_status_callback, con);
    routing_data_handler(con, &tcp_data_callback, con);
    oob_data_handler(con, &tcp_oob_callback, con);

    return 0;
}
