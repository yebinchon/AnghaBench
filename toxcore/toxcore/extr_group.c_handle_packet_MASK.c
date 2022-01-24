#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  Group_c ;
typedef  int /*<<< orphan*/  Group_Chats ;

/* Variables and functions */
#define  PACKET_ID_DIRECT_GROUPCHAT 129 
#define  PACKET_ID_MESSAGE_GROUPCHAT 128 
 int PACKET_ID_ONLINE_PACKET ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(void *object, int friendcon_id, uint8_t *data, uint16_t length)
{
    Group_Chats *g_c = object;

    if (length < 1 + sizeof(uint16_t) + 1)
        return -1;

    if (data[0] == PACKET_ID_ONLINE_PACKET) {
        return FUNC4(g_c, friendcon_id, data + 1, length - 1);
    }

    if (data[0] != PACKET_ID_DIRECT_GROUPCHAT && data[0] != PACKET_ID_MESSAGE_GROUPCHAT)
        return -1;

    uint16_t groupnumber;
    FUNC5(&groupnumber, data + 1, sizeof(uint16_t));
    groupnumber = FUNC6(groupnumber);
    Group_c *g = FUNC1(g_c, groupnumber);

    if (!g)
        return -1;

    int index = FUNC0(g, friendcon_id);

    if (index == -1)
        return -1;

    switch (data[0]) {
        case PACKET_ID_DIRECT_GROUPCHAT: {
            FUNC2(g_c, groupnumber, data + 1 + sizeof(uint16_t), length - (1 + sizeof(uint16_t)), index);
            break;
        }

        case PACKET_ID_MESSAGE_GROUPCHAT: {
            FUNC3(g_c, groupnumber, data + 1 + sizeof(uint16_t), length - (1 + sizeof(uint16_t)), index);
            break;
        }

        default: {
            return 0;
        }
    }

    return 0;
}