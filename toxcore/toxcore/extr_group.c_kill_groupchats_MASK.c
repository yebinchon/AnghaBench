#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ group_chat_object; } ;
struct TYPE_6__ {unsigned int num_chats; TYPE_2__* m; } ;
typedef  TYPE_1__ Group_Chats ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 

void FUNC3(Group_Chats *g_c)
{
    unsigned int i;

    for (i = 0; i < g_c->num_chats; ++i) {
        FUNC0(g_c, i);
    }

    FUNC2(g_c->m, NULL);
    g_c->m->group_chat_object = 0;
    FUNC1(g_c);
}