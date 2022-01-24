#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {unsigned int num_chats; } ;
struct TYPE_9__ {scalar_t__ status; } ;
typedef  TYPE_1__ Group_c ;
typedef  TYPE_2__ Group_Chats ;

/* Variables and functions */
 scalar_t__ GROUPCHAT_STATUS_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,unsigned int) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned int) ; 

void FUNC4(Group_Chats *g_c)
{
    unsigned int i;

    for (i = 0; i < g_c->num_chats; ++i) {
        Group_c *g = FUNC1(g_c, i);

        if (!g)
            continue;

        if (g->status == GROUPCHAT_STATUS_CONNECTED) {
            FUNC0(g_c, i);
            FUNC3(g_c, i);
            FUNC2(g_c, i);
        }
    }

    //TODO
}