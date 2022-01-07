
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int message_number ;
struct TYPE_18__ {int action_callback_userdata; int m; int (* action_callback ) (int ,int,int,int*,int,int ) ;int message_callback_userdata; int (* message_callback ) (int ,int,int,int*,int,int ) ;} ;
struct TYPE_17__ {TYPE_2__* group; TYPE_1__* close; } ;
struct TYPE_16__ {scalar_t__ last_message_number; int last_recv; } ;
struct TYPE_15__ {int group_number; int number; } ;
typedef TYPE_3__ Group_c ;
typedef TYPE_4__ Group_Chats ;



 int GROUP_MESSAGE_KILL_PEER_LENGTH ;


 int GROUP_MESSAGE_NEW_PEER_LENGTH ;




 int addpeer (TYPE_4__*,int,int const*,int const*,int) ;
 int crypto_box_PUBLICKEYBYTES ;
 int delpeer (TYPE_4__*,int,int) ;
 TYPE_3__* get_group_c (TYPE_4__*,int) ;
 int get_peer_index (TYPE_3__*,int) ;
 int memcpy (int*,int const*,int) ;
 int ntohl (int) ;
 int ntohs (int) ;
 int send_message_all_close (TYPE_4__*,int,int const*,int,int) ;
 int send_peer_query (TYPE_4__*,int ,int ) ;
 int setnick (TYPE_4__*,int,int,int const*,int) ;
 int settitle (TYPE_4__*,int,int,int const*,int) ;
 int stub1 (int ,int,int,int*,int,int ) ;
 int stub2 (int ,int,int,int*,int,int ) ;
 int unix_time () ;

__attribute__((used)) static void handle_message_packet_group(Group_Chats *g_c, int groupnumber, const uint8_t *data, uint16_t length,
                                        int close_index)
{
    if (length < sizeof(uint16_t) + sizeof(uint32_t) + 1)
        return;

    Group_c *g = get_group_c(g_c, groupnumber);

    if (!g)
        return;

    uint16_t peer_number;
    memcpy(&peer_number, data, sizeof(uint16_t));
    peer_number = ntohs(peer_number);

    int index = get_peer_index(g, peer_number);

    if (index == -1) {


        send_peer_query(g_c, g->close[close_index].number, g->close[close_index].group_number);
        return;
    }

    uint32_t message_number;
    memcpy(&message_number, data + sizeof(uint16_t), sizeof(message_number));
    message_number = ntohl(message_number);

    if (g->group[index].last_message_number == 0) {
        g->group[index].last_message_number = message_number;
    } else if (message_number - g->group[index].last_message_number > 64 ||
               message_number == g->group[index].last_message_number) {
        return;
    }

    g->group[index].last_message_number = message_number;

    uint8_t message_id = data[sizeof(uint16_t) + sizeof(message_number)];
    const uint8_t *msg_data = data + sizeof(uint16_t) + sizeof(message_number) + 1;
    uint16_t msg_data_len = length - (sizeof(uint16_t) + sizeof(message_number) + 1);

    switch (message_id) {
        case 131: {
            if (msg_data_len != 0)
                return;

            g->group[index].last_recv = unix_time();
        }
        break;

        case 132: {
            if (msg_data_len != GROUP_MESSAGE_NEW_PEER_LENGTH)
                return;

            uint16_t new_peer_number;
            memcpy(&new_peer_number, msg_data, sizeof(uint16_t));
            new_peer_number = ntohs(new_peer_number);
            addpeer(g_c, groupnumber, msg_data + sizeof(uint16_t), msg_data + sizeof(uint16_t) + crypto_box_PUBLICKEYBYTES,
                    new_peer_number);
        }
        break;

        case 134: {
            if (msg_data_len != GROUP_MESSAGE_KILL_PEER_LENGTH)
                return;

            uint16_t kill_peer_number;
            memcpy(&kill_peer_number, msg_data, sizeof(uint16_t));
            kill_peer_number = ntohs(kill_peer_number);

            if (peer_number == kill_peer_number) {
                delpeer(g_c, groupnumber, index);
            } else {
                return;

            }
        }
        break;

        case 133: {
            if (setnick(g_c, groupnumber, index, msg_data, msg_data_len) == -1)
                return;
        }
        break;

        case 130: {
            if (settitle(g_c, groupnumber, index, msg_data, msg_data_len) == -1)
                return;
        }
        break;

        case 128: {
            if (msg_data_len == 0)
                return;

            uint8_t newmsg[msg_data_len + 1];
            memcpy(newmsg, msg_data, msg_data_len);
            newmsg[msg_data_len] = 0;


            if (g_c->message_callback)
                g_c->message_callback(g_c->m, groupnumber, index, newmsg, msg_data_len, g_c->message_callback_userdata);

            break;
        }

        case 129: {
            if (msg_data_len == 0)
                return;

            uint8_t newmsg[msg_data_len + 1];
            memcpy(newmsg, msg_data, msg_data_len);
            newmsg[msg_data_len] = 0;


            if (g_c->action_callback)
                g_c->action_callback(g_c->m, groupnumber, index, newmsg, msg_data_len, g_c->action_callback_userdata);

            break;
        }

        default:
            return;
    }

    send_message_all_close(g_c, groupnumber, data, length, -1 );
}
