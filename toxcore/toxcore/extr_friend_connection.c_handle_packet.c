
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_12__ {TYPE_1__* callbacks; int ping_lastrecv; int real_public_key; } ;
struct TYPE_11__ {int fr_request_object; int (* fr_request_callback ) (int ,int ,scalar_t__*,int ) ;} ;
struct TYPE_10__ {int public_key; int ip_port; } ;
struct TYPE_9__ {int data_callback_id; int data_callback_object; int (* data_callback ) (int ,int ,scalar_t__*,int ) ;} ;
typedef TYPE_2__ Node_format ;
typedef TYPE_3__ Friend_Connections ;
typedef TYPE_4__ Friend_Conn ;


 unsigned int MAX_FRIEND_CONNECTION_CALLBACKS ;
 int MAX_SHARED_RELAYS ;
 scalar_t__ PACKET_ID_ALIVE ;
 scalar_t__ PACKET_ID_FRIEND_REQUESTS ;
 scalar_t__ PACKET_ID_SHARE_RELAYS ;
 int friend_add_tcp_relay (TYPE_3__*,int,int ,int ) ;
 TYPE_4__* get_conn (TYPE_3__*,int) ;
 int stub1 (int ,int ,scalar_t__*,int ) ;
 int stub2 (int ,int ,scalar_t__*,int ) ;
 int unix_time () ;
 int unpack_nodes (TYPE_2__*,int,int *,scalar_t__*,int ,int) ;

__attribute__((used)) static int handle_packet(void *object, int number, uint8_t *data, uint16_t length)
{
    if (length == 0)
        return -1;

    Friend_Connections *fr_c = object;
    Friend_Conn *friend_con = get_conn(fr_c, number);

    if (!friend_con)
        return -1;

    if (data[0] == PACKET_ID_FRIEND_REQUESTS) {
        if (fr_c->fr_request_callback)
            fr_c->fr_request_callback(fr_c->fr_request_object, friend_con->real_public_key, data, length);

        return 0;
    } else if (data[0] == PACKET_ID_ALIVE) {
        friend_con->ping_lastrecv = unix_time();
        return 0;
    } else if (data[0] == PACKET_ID_SHARE_RELAYS) {
        Node_format nodes[MAX_SHARED_RELAYS];
        int n;

        if ((n = unpack_nodes(nodes, MAX_SHARED_RELAYS, ((void*)0), data + 1, length - 1, 1)) == -1)
            return -1;

        int j;

        for (j = 0; j < n; j++) {
            friend_add_tcp_relay(fr_c, number, nodes[j].ip_port, nodes[j].public_key);
        }

        return 0;
    }

    unsigned int i;

    for (i = 0; i < MAX_FRIEND_CONNECTION_CALLBACKS; ++i) {
        if (friend_con->callbacks[i].data_callback)
            friend_con->callbacks[i].data_callback(friend_con->callbacks[i].data_callback_object,
                                                   friend_con->callbacks[i].data_callback_id, data, length);

        friend_con = get_conn(fr_c, number);

        if (!friend_con)
            return -1;
    }

    return 0;
}
