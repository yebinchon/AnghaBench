
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_9__ {unsigned int custom_uint; TYPE_1__* custom_object; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_7__ {int tcp_data_callback_object; int (* tcp_data_callback ) (int ,int ,int const*,int ) ;} ;
typedef int TCP_con ;
typedef TYPE_1__ TCP_Connections ;
typedef TYPE_2__ TCP_Connection_to ;
typedef TYPE_3__ TCP_Client_Connection ;


 TYPE_2__* get_connection (TYPE_1__*,int ) ;
 int * get_tcp_connection (TYPE_1__*,unsigned int) ;
 int stub1 (int ,int ,int const*,int ) ;

__attribute__((used)) static int tcp_data_callback(void *object, uint32_t number, uint8_t connection_id, const uint8_t *data, uint16_t length)
{

    if (length == 0)
        return -1;

    TCP_Client_Connection *TCP_client_con = object;
    TCP_Connections *tcp_c = TCP_client_con->custom_object;

    unsigned int tcp_connections_number = TCP_client_con->custom_uint;
    TCP_con *tcp_con = get_tcp_connection(tcp_c, tcp_connections_number);

    if (!tcp_con)
        return -1;

    TCP_Connection_to *con_to = get_connection(tcp_c, number);

    if (!con_to)
        return -1;

    if (tcp_c->tcp_data_callback)
        tcp_c->tcp_data_callback(tcp_c->tcp_data_callback_object, con_to->id, data, length);

    return 0;
}
