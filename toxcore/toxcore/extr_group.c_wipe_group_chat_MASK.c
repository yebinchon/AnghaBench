#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_7__ {scalar_t__ status; } ;
struct TYPE_6__ {int num_chats; TYPE_3__* chats; } ;
typedef  int /*<<< orphan*/  Group_c ;
typedef  TYPE_1__ Group_Chats ;

/* Variables and functions */
 scalar_t__ GROUPCHAT_STATUS_NONE ; 
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 

__attribute__((used)) static int FUNC3(Group_Chats *g_c, int groupnumber)
{
    if (FUNC0(g_c, groupnumber))
        return -1;

    uint32_t i;
    FUNC2(&(g_c->chats[groupnumber]), sizeof(Group_c));

    for (i = g_c->num_chats; i != 0; --i) {
        if (g_c->chats[i - 1].status != GROUPCHAT_STATUS_NONE)
            break;
    }

    if (g_c->num_chats != i) {
        g_c->num_chats = i;
        FUNC1(g_c, g_c->num_chats);
    }

    return 0;
}