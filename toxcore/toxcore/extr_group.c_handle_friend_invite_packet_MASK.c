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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct TYPE_18__ {int /*<<< orphan*/  fr_c; int /*<<< orphan*/  invite_callback_userdata; int /*<<< orphan*/  (* invite_callback ) (TYPE_2__*,int /*<<< orphan*/ ,int const,int const*,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_17__ {TYPE_1__* close; int /*<<< orphan*/  identifier; } ;
struct TYPE_16__ {TYPE_4__* group_chat_object; } ;
struct TYPE_15__ {int group_number; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ Messenger ;
typedef  TYPE_3__ Group_c ;
typedef  TYPE_4__ Group_Chats ;

/* Variables and functions */
 int /*<<< orphan*/  GROUPCHAT_CLOSE_ONLINE ; 
 int /*<<< orphan*/  GROUP_IDENTIFIER_LENGTH ; 
#define  INVITE_ID 129 
 int INVITE_PACKET_SIZE ; 
#define  INVITE_RESPONSE_ID 128 
 int INVITE_RESPONSE_PACKET_SIZE ; 
 int FUNC0 (TYPE_4__*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int,int*,int*,int) ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC3 (TYPE_4__*,int) ; 
 int FUNC4 (TYPE_4__*,int const*) ; 
 int FUNC5 (TYPE_3__*,int) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int const*,int) ; 
 int FUNC9 (int) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int const,int const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(Messenger *m, uint32_t friendnumber, const uint8_t *data, uint16_t length)
{
    Group_Chats *g_c = m->group_chat_object;

    if (length <= 1)
        return;

    const uint8_t *invite_data = data + 1;
    uint16_t invite_length = length - 1;

    switch (data[0]) {
        case INVITE_ID: {
            if (length != INVITE_PACKET_SIZE)
                return;

            int groupnumber = FUNC4(g_c, data + 1 + sizeof(uint16_t));

            if (groupnumber == -1) {
                if (g_c->invite_callback)
                    g_c->invite_callback(m, friendnumber, *(invite_data + sizeof(uint16_t)), invite_data, invite_length,
                                         g_c->invite_callback_userdata);

                return;
            }

            break;
        }

        case INVITE_RESPONSE_ID: {
            if (length != INVITE_RESPONSE_PACKET_SIZE)
                return;

            uint16_t other_groupnum, groupnum;
            FUNC8(&groupnum, data + 1 + sizeof(uint16_t), sizeof(uint16_t));
            groupnum = FUNC9(groupnum);

            Group_c *g = FUNC3(g_c, groupnum);

            if (!g)
                return;

            if (FUNC11(data + 1 + sizeof(uint16_t) * 2, g->identifier, GROUP_IDENTIFIER_LENGTH) != 0)
                return;

            uint16_t peer_number = FUNC10(); /* TODO: what if two people enter the group at the same time and
  are given the same peer_number by different nodes? */

            unsigned int tries = 0;

            while (FUNC5(g, peer_number) != -1) {
                peer_number = FUNC10();
                ++tries;

                if (tries > 32)
                    return;
            }

            FUNC8(&other_groupnum, data + 1, sizeof(uint16_t));
            other_groupnum = FUNC9(other_groupnum);

            int friendcon_id = FUNC6(m, friendnumber);
            uint8_t real_pk[crypto_box_PUBLICKEYBYTES], temp_pk[crypto_box_PUBLICKEYBYTES];
            FUNC2(real_pk, temp_pk, g_c->fr_c, friendcon_id);

            FUNC1(g_c, groupnum, real_pk, temp_pk, peer_number);
            int close_index = FUNC0(g_c, friendcon_id, groupnum, 0, 1);

            if (close_index != -1) {
                g->close[close_index].group_number = other_groupnum;
                g->close[close_index].type = GROUPCHAT_CLOSE_ONLINE;
            }

            FUNC7(g_c, groupnum, peer_number, real_pk, temp_pk);
            break;
        }

        default:
            return;
    }
}