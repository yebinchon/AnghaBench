
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_10__ {TYPE_1__* connections; int const* public_key; } ;
struct TYPE_9__ {TYPE_3__* accepted_connection_array; } ;
struct TYPE_8__ {int status; int index; size_t other_id; int const* public_key; } ;
typedef TYPE_2__ TCP_Server ;
typedef TYPE_3__ TCP_Secure_Connection ;


 size_t NUM_CLIENT_CONNECTIONS ;
 scalar_t__ NUM_RESERVED_PORTS ;
 int crypto_box_PUBLICKEYBYTES ;
 int get_TCP_connection_index (TYPE_2__*,int const*) ;
 int memcpy (int const*,int const*,int ) ;
 scalar_t__ public_key_cmp (int const*,int const*) ;
 int send_connect_notification (TYPE_3__*,size_t) ;
 int send_routing_response (TYPE_3__*,scalar_t__,int const*) ;

__attribute__((used)) static int handle_TCP_routing_req(TCP_Server *TCP_server, uint32_t con_id, const uint8_t *public_key)
{
    uint32_t i;
    uint32_t index = ~0;
    TCP_Secure_Connection *con = &TCP_server->accepted_connection_array[con_id];


    if (public_key_cmp(con->public_key, public_key) == 0) {
        if (send_routing_response(con, 0, public_key) == -1)
            return -1;

        return 0;
    }

    for (i = 0; i < NUM_CLIENT_CONNECTIONS; ++i) {
        if (con->connections[i].status != 0) {
            if (public_key_cmp(public_key, con->connections[i].public_key) == 0) {
                if (send_routing_response(con, i + NUM_RESERVED_PORTS, public_key) == -1) {
                    return -1;
                } else {
                    return 0;
                }
            }
        } else if (index == (uint32_t)~0) {
            index = i;
        }
    }

    if (index == (uint32_t)~0) {
        if (send_routing_response(con, 0, public_key) == -1)
            return -1;

        return 0;
    }

    int ret = send_routing_response(con, index + NUM_RESERVED_PORTS, public_key);

    if (ret == 0)
        return 0;

    if (ret == -1)
        return -1;

    con->connections[index].status = 1;
    memcpy(con->connections[index].public_key, public_key, crypto_box_PUBLICKEYBYTES);
    int other_index = get_TCP_connection_index(TCP_server, public_key);

    if (other_index != -1) {
        uint32_t other_id = ~0;
        TCP_Secure_Connection *other_conn = &TCP_server->accepted_connection_array[other_index];

        for (i = 0; i < NUM_CLIENT_CONNECTIONS; ++i) {
            if (other_conn->connections[i].status == 1
                    && public_key_cmp(other_conn->connections[i].public_key, con->public_key) == 0) {
                other_id = i;
                break;
            }
        }

        if (other_id != (uint32_t)~0) {
            con->connections[index].status = 2;
            con->connections[index].index = other_index;
            con->connections[index].other_id = other_id;
            other_conn->connections[other_id].status = 2;
            other_conn->connections[other_id].index = con_id;
            other_conn->connections[other_id].other_id = index;

            send_connect_notification(con, index);
            send_connect_notification(other_conn, other_id);
        }
    }

    return 0;
}
