#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  message_number ;
struct TYPE_18__ {int /*<<< orphan*/  action_callback_userdata; int /*<<< orphan*/  m; int /*<<< orphan*/  (* action_callback ) (int /*<<< orphan*/ ,int,int,int*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  message_callback_userdata; int /*<<< orphan*/  (* message_callback ) (int /*<<< orphan*/ ,int,int,int*,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_17__ {TYPE_2__* group; TYPE_1__* close; } ;
struct TYPE_16__ {scalar_t__ last_message_number; int /*<<< orphan*/  last_recv; } ;
struct TYPE_15__ {int /*<<< orphan*/  group_number; int /*<<< orphan*/  number; } ;
typedef  TYPE_3__ Group_c ;
typedef  TYPE_4__ Group_Chats ;

/* Variables and functions */
#define  GROUP_MESSAGE_KILL_PEER_ID 134 
 int GROUP_MESSAGE_KILL_PEER_LENGTH ; 
#define  GROUP_MESSAGE_NAME_ID 133 
#define  GROUP_MESSAGE_NEW_PEER_ID 132 
 int GROUP_MESSAGE_NEW_PEER_LENGTH ; 
#define  GROUP_MESSAGE_PING_ID 131 
#define  GROUP_MESSAGE_TITLE_ID 130 
#define  PACKET_ID_ACTION 129 
#define  PACKET_ID_MESSAGE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int,int const*,int const*,int) ; 
 int /*<<< orphan*/  crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int,int) ; 
 TYPE_3__* FUNC2 (TYPE_4__*,int) ; 
 int FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int const*,int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int,int const*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_4__*,int,int,int const*,int) ; 
 int FUNC10 (TYPE_4__*,int,int,int const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static void FUNC14(Group_Chats *g_c, int groupnumber, const uint8_t *data, uint16_t length,
                                        int close_index)
{
    if (length < sizeof(uint16_t) + sizeof(uint32_t) + 1)
        return;

    Group_c *g = FUNC2(g_c, groupnumber);

    if (!g)
        return;

    uint16_t peer_number;
    FUNC4(&peer_number, data, sizeof(uint16_t));
    peer_number = FUNC6(peer_number);

    int index = FUNC3(g, peer_number);

    if (index == -1) {
        /* We don't know the peer this packet came from so we query the list of peers from that peer.
          (They would not have relayed it if they didn't know the peer.) */
        FUNC8(g_c, g->close[close_index].number, g->close[close_index].group_number);
        return;
    }

    uint32_t message_number;
    FUNC4(&message_number, data + sizeof(uint16_t), sizeof(message_number));
    message_number = FUNC5(message_number);

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
        case GROUP_MESSAGE_PING_ID: {
            if (msg_data_len != 0)
                return;

            g->group[index].last_recv = FUNC13();
        }
        break;

        case GROUP_MESSAGE_NEW_PEER_ID: {
            if (msg_data_len != GROUP_MESSAGE_NEW_PEER_LENGTH)
                return;

            uint16_t new_peer_number;
            FUNC4(&new_peer_number, msg_data, sizeof(uint16_t));
            new_peer_number = FUNC6(new_peer_number);
            FUNC0(g_c, groupnumber, msg_data + sizeof(uint16_t), msg_data + sizeof(uint16_t) + crypto_box_PUBLICKEYBYTES,
                    new_peer_number);
        }
        break;

        case GROUP_MESSAGE_KILL_PEER_ID: {
            if (msg_data_len != GROUP_MESSAGE_KILL_PEER_LENGTH)
                return;

            uint16_t kill_peer_number;
            FUNC4(&kill_peer_number, msg_data, sizeof(uint16_t));
            kill_peer_number = FUNC6(kill_peer_number);

            if (peer_number == kill_peer_number) {
                FUNC1(g_c, groupnumber, index);
            } else {
                return;
                //TODO
            }
        }
        break;

        case GROUP_MESSAGE_NAME_ID: {
            if (FUNC9(g_c, groupnumber, index, msg_data, msg_data_len) == -1)
                return;
        }
        break;

        case GROUP_MESSAGE_TITLE_ID: {
            if (FUNC10(g_c, groupnumber, index, msg_data, msg_data_len) == -1)
                return;
        }
        break;

        case PACKET_ID_MESSAGE: {
            if (msg_data_len == 0)
                return;

            uint8_t newmsg[msg_data_len + 1];
            FUNC4(newmsg, msg_data, msg_data_len);
            newmsg[msg_data_len] = 0;

            //TODO
            if (g_c->message_callback)
                g_c->message_callback(g_c->m, groupnumber, index, newmsg, msg_data_len, g_c->message_callback_userdata);

            break;
        }

        case PACKET_ID_ACTION: {
            if (msg_data_len == 0)
                return;

            uint8_t newmsg[msg_data_len + 1];
            FUNC4(newmsg, msg_data, msg_data_len);
            newmsg[msg_data_len] = 0;

            //TODO
            if (g_c->action_callback)
                g_c->action_callback(g_c->m, groupnumber, index, newmsg, msg_data_len, g_c->action_callback_userdata);

            break;
        }

        default:
            return;
    }

    FUNC7(g_c, groupnumber, data, length, -1/*TODO close_index*/);
}