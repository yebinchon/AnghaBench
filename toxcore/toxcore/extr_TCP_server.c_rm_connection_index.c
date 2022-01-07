
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef size_t uint32_t ;
struct TYPE_12__ {TYPE_1__* connections; } ;
struct TYPE_11__ {TYPE_2__* connections; } ;
struct TYPE_10__ {size_t size_accepted_connections; TYPE_5__* accepted_connection_array; } ;
struct TYPE_9__ {int status; size_t index; size_t other_id; } ;
struct TYPE_8__ {int status; scalar_t__ index; scalar_t__ other_id; } ;
typedef TYPE_3__ TCP_Server ;
typedef TYPE_4__ TCP_Secure_Connection ;


 size_t NUM_CLIENT_CONNECTIONS ;
 int send_disconnect_notification (TYPE_5__*,size_t) ;

__attribute__((used)) static int rm_connection_index(TCP_Server *TCP_server, TCP_Secure_Connection *con, uint8_t con_number)
{
    if (con_number >= NUM_CLIENT_CONNECTIONS)
        return -1;

    if (con->connections[con_number].status) {
        uint32_t index = con->connections[con_number].index;
        uint8_t other_id = con->connections[con_number].other_id;

        if (con->connections[con_number].status == 2) {

            if (index >= TCP_server->size_accepted_connections)
                return -1;

            TCP_server->accepted_connection_array[index].connections[other_id].other_id = 0;
            TCP_server->accepted_connection_array[index].connections[other_id].index = 0;
            TCP_server->accepted_connection_array[index].connections[other_id].status = 1;

            send_disconnect_notification(&TCP_server->accepted_connection_array[index], other_id);
        }

        con->connections[con_number].index = 0;
        con->connections[con_number].other_id = 0;
        con->connections[con_number].status = 0;
        return 0;
    } else {
        return -1;
    }
}
