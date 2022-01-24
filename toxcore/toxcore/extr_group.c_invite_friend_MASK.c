#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  invite ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  groupchat_num ;
struct TYPE_8__ {int /*<<< orphan*/  m; } ;
struct TYPE_7__ {int /*<<< orphan*/ * identifier; } ;
typedef  TYPE_1__ Group_c ;
typedef  TYPE_2__ Group_Chats ;

/* Variables and functions */
 int GROUP_IDENTIFIER_LENGTH ; 
 int /*<<< orphan*/  INVITE_ID ; 
 int INVITE_PACKET_SIZE ; 
 TYPE_1__* FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

int FUNC5(Group_Chats *g_c, int32_t friendnumber, int groupnumber)
{
    Group_c *g = FUNC0(g_c, groupnumber);

    if (!g)
        return -1;

    uint8_t invite[INVITE_PACKET_SIZE];
    invite[0] = INVITE_ID;
    uint16_t groupchat_num = FUNC1((uint16_t)groupnumber);
    FUNC2(invite + 1, &groupchat_num, sizeof(groupchat_num));
    FUNC2(invite + 1 + sizeof(groupchat_num), g->identifier, GROUP_IDENTIFIER_LENGTH);

    if (FUNC3(g_c->m, friendnumber, invite, sizeof(invite))) {
        return 0;
    } else {
        FUNC4(g_c, groupnumber);
        return -1;
    }
}