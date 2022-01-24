#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_15__ {int /*<<< orphan*/  group_namelistchange_userdata; int /*<<< orphan*/  m; int /*<<< orphan*/  (* peer_namelistchange ) (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_14__ {int /*<<< orphan*/  last_recv; int /*<<< orphan*/  peer_number; int /*<<< orphan*/  temp_pk; int /*<<< orphan*/  real_pk; } ;
struct TYPE_13__ {int numpeers; int /*<<< orphan*/  object; int /*<<< orphan*/  (* peer_on_join ) (int /*<<< orphan*/ ,int,int) ;TYPE_2__* group; } ;
typedef  TYPE_1__ Group_c ;
typedef  TYPE_2__ Group_Peer ;
typedef  TYPE_3__ Group_Chats ;

/* Variables and functions */
 int /*<<< orphan*/  CHAT_CHANGE_PEER_ADD ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC1 (TYPE_3__*,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(Group_Chats *g_c, int groupnumber, const uint8_t *real_pk, const uint8_t *temp_pk,
                   uint16_t peer_number)
{
    Group_c *g = FUNC1(g_c, groupnumber);

    if (!g)
        return -1;

    //TODO
    int peer_index = FUNC5(g, real_pk);

    if (peer_index != -1) {
        FUNC3(g->group[peer_index].temp_pk, temp_pk);

        if (g->group[peer_index].peer_number != peer_number)
            return -1;

        return peer_index;
    }

    peer_index = FUNC2(g, peer_number);

    if (peer_index != -1)
        return -1;

    Group_Peer *temp;
    temp = FUNC6(g->group, sizeof(Group_Peer) * (g->numpeers + 1));

    if (temp == NULL)
        return -1;

    FUNC4(&(temp[g->numpeers]), 0, sizeof(Group_Peer));
    g->group = temp;

    FUNC3(g->group[g->numpeers].real_pk, real_pk);
    FUNC3(g->group[g->numpeers].temp_pk, temp_pk);
    g->group[g->numpeers].peer_number = peer_number;

    g->group[g->numpeers].last_recv = FUNC9();
    ++g->numpeers;

    FUNC0(g_c, groupnumber, real_pk, temp_pk);

    if (g_c->peer_namelistchange)
        g_c->peer_namelistchange(g_c->m, groupnumber, g->numpeers - 1, CHAT_CHANGE_PEER_ADD,
                                 g_c->group_namelistchange_userdata);

    if (g->peer_on_join)
        g->peer_on_join(g->object, groupnumber, g->numpeers - 1);

    return (g->numpeers - 1);
}