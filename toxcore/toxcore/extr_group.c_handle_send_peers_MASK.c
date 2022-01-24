#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  peer_num ;
struct TYPE_14__ {TYPE_2__* m; } ;
struct TYPE_13__ {scalar_t__ status; int peer_number; } ;
struct TYPE_12__ {int /*<<< orphan*/  name_length; int /*<<< orphan*/  name; TYPE_1__* net_crypto; } ;
struct TYPE_11__ {int /*<<< orphan*/  self_public_key; } ;
typedef  TYPE_3__ Group_c ;
typedef  TYPE_4__ Group_Chats ;

/* Variables and functions */
 scalar_t__ GROUPCHAT_STATUS_CONNECTED ; 
 scalar_t__ GROUPCHAT_STATUS_VALID ; 
 int MAX_NAME_LENGTH ; 
 int FUNC0 (TYPE_4__*,int,int const*,int const*,int) ; 
 int crypto_box_PUBLICKEYBYTES ; 
 TYPE_3__* FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const*,int) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,int,int const*,int) ; 

__attribute__((used)) static int FUNC7(Group_Chats *g_c, int groupnumber, const uint8_t *data, uint16_t length)
{
    if (length == 0)
        return -1;

    Group_c *g = FUNC1(g_c, groupnumber);

    if (!g)
        return -1;

    const uint8_t *d = data;

    while ((unsigned int)(length - (d - data)) >= sizeof(uint16_t) + crypto_box_PUBLICKEYBYTES * 2 + 1) {
        uint16_t peer_num;
        FUNC3(&peer_num, d, sizeof(peer_num));
        peer_num = FUNC4(peer_num);
        d += sizeof(uint16_t);
        int peer_index = FUNC0(g_c, groupnumber, d, d + crypto_box_PUBLICKEYBYTES, peer_num);

        if (peer_index == -1)
            return -1;

        if (g->status == GROUPCHAT_STATUS_VALID
                && FUNC5(d, g_c->m->net_crypto->self_public_key) == 0) {
            g->peer_number = peer_num;
            g->status = GROUPCHAT_STATUS_CONNECTED;
            FUNC2(g_c, groupnumber, g_c->m->name, g_c->m->name_length);
        }

        d += crypto_box_PUBLICKEYBYTES * 2;
        uint8_t name_length = *d;
        d += 1;

        if (name_length > (length - (d - data)) || name_length > MAX_NAME_LENGTH)
            return -1;

        FUNC6(g_c, groupnumber, peer_index, d, name_length);
        d += name_length;
    }

    return 0;
}