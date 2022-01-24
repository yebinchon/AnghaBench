#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  g_c; } ;
struct TYPE_5__ {int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ Group_Peer_AV ;
typedef  TYPE_2__ Group_AV ;

/* Variables and functions */
 int /*<<< orphan*/  GROUP_JBUF_SIZE ; 
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(void *object, int groupnumber, int friendgroupnumber)
{
    Group_AV *group_av = object;
    Group_Peer_AV *peer_av = FUNC0(1, sizeof(Group_Peer_AV));

    if (!peer_av)
        return;

    peer_av->buffer = FUNC1(GROUP_JBUF_SIZE);
    FUNC2(group_av->g_c, groupnumber, friendgroupnumber, peer_av);
}