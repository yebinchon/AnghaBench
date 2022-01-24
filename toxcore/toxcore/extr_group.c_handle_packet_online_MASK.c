#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_14__ {int /*<<< orphan*/  fr_c; } ;
struct TYPE_13__ {int number_joined; TYPE_1__* close; int /*<<< orphan*/  identifier; } ;
struct TYPE_12__ {scalar_t__ type; int /*<<< orphan*/  number; scalar_t__ group_number; int /*<<< orphan*/  closest; } ;
typedef  TYPE_2__ Group_c ;
typedef  TYPE_3__ Group_Chats ;

/* Variables and functions */
 scalar_t__ DESIRED_CLOSE_CONNECTIONS ; 
 scalar_t__ GROUPCHAT_CLOSE_NONE ; 
 scalar_t__ GROUPCHAT_CLOSE_ONLINE ; 
 scalar_t__ ONLINE_PACKET_DATA_SIZE ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC2 (TYPE_3__*,int) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC10(Group_Chats *g_c, int friendcon_id, uint8_t *data, uint16_t length)
{
    if (length != ONLINE_PACKET_DATA_SIZE)
        return -1;

    int groupnumber = FUNC3(g_c, data + sizeof(uint16_t));
    uint16_t other_groupnum;
    FUNC5(&other_groupnum, data, sizeof(uint16_t));
    other_groupnum = FUNC6(other_groupnum);

    Group_c *g = FUNC2(g_c, groupnumber);

    if (!g)
        return -1;

    int index = FUNC1(g, friendcon_id);

    if (index == -1)
        return -1;

    if (g->close[index].type == GROUPCHAT_CLOSE_ONLINE) {
        return -1;
    }

    if (FUNC0(g) == 0) {
        FUNC9(g_c, friendcon_id, other_groupnum);
    }

    g->close[index].group_number = other_groupnum;
    g->close[index].type = GROUPCHAT_CLOSE_ONLINE;
    FUNC7(g_c->fr_c, friendcon_id, groupnumber, g->identifier);

    if (g->number_joined != -1 && FUNC0(g) >= DESIRED_CLOSE_CONNECTIONS) {
        int fr_close_index = FUNC1(g, g->number_joined);

        if (fr_close_index == -1)
            return -1;

        if (!g->close[fr_close_index].closest) {
            g->close[fr_close_index].type = GROUPCHAT_CLOSE_NONE;
            FUNC8(g_c, g->close[fr_close_index].number, g->close[fr_close_index].group_number);
            FUNC4(g_c->fr_c, g->close[fr_close_index].number);
            g->number_joined = -1;
        }
    }

    return 0;
}