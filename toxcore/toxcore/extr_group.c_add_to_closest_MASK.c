#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {int const* real_pk; scalar_t__ changed; TYPE_1__* closest_peers; } ;
struct TYPE_4__ {int entry; int const* real_pk; int const* temp_pk; } ;
typedef  TYPE_2__ Group_c ;
typedef  int /*<<< orphan*/  Group_Chats ;

/* Variables and functions */
 unsigned int DESIRED_CLOSE_CONNECTIONS ; 
 scalar_t__ GROUPCHAT_CLOSEST_ADDED ; 
 scalar_t__ FUNC0 (int const*,int const*) ; 
 int crypto_box_PUBLICKEYBYTES ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int const*,int) ; 
 scalar_t__ FUNC3 (int const*,int const*) ; 

__attribute__((used)) static int FUNC4(Group_Chats *g_c, int groupnumber, const uint8_t *real_pk, const uint8_t *temp_pk)
{
    Group_c *g = FUNC1(g_c, groupnumber);

    if (!g)
        return -1;

    if (FUNC3(g->real_pk, real_pk) == 0)
        return -1;

    unsigned int i;
    unsigned int index = DESIRED_CLOSE_CONNECTIONS;

    for (i = 0; i < DESIRED_CLOSE_CONNECTIONS; ++i) {
        if (g->closest_peers[i].entry && FUNC3(real_pk, g->closest_peers[i].real_pk) == 0) {
            return 0;
        }
    }

    for (i = 0; i < DESIRED_CLOSE_CONNECTIONS; ++i) {
        if (g->closest_peers[i].entry == 0) {
            index = i;
            break;
        }
    }

    if (index == DESIRED_CLOSE_CONNECTIONS) {
        uint64_t comp_val = FUNC0(g->real_pk, real_pk);
        uint64_t comp_d = 0;

        for (i = 0; i < (DESIRED_CLOSE_CONNECTIONS / 2); ++i) {
            uint64_t comp;
            comp = FUNC0(g->real_pk, g->closest_peers[i].real_pk);

            if (comp > comp_val && comp > comp_d) {
                index = i;
                comp_d = comp;
            }
        }

        comp_val = FUNC0(real_pk, g->real_pk);

        for (i = (DESIRED_CLOSE_CONNECTIONS / 2); i < DESIRED_CLOSE_CONNECTIONS; ++i) {
            uint64_t comp = FUNC0(g->closest_peers[i].real_pk, g->real_pk);

            if (comp > comp_val && comp > comp_d) {
                index = i;
                comp_d = comp;
            }
        }
    }

    if (index == DESIRED_CLOSE_CONNECTIONS) {
        return -1;
    }

    uint8_t old_real_pk[crypto_box_PUBLICKEYBYTES];
    uint8_t old_temp_pk[crypto_box_PUBLICKEYBYTES];
    uint8_t old = 0;

    if (g->closest_peers[index].entry) {
        FUNC2(old_real_pk, g->closest_peers[index].real_pk, crypto_box_PUBLICKEYBYTES);
        FUNC2(old_temp_pk, g->closest_peers[index].temp_pk, crypto_box_PUBLICKEYBYTES);
        old = 1;
    }

    g->closest_peers[index].entry = 1;
    FUNC2(g->closest_peers[index].real_pk, real_pk, crypto_box_PUBLICKEYBYTES);
    FUNC2(g->closest_peers[index].temp_pk, temp_pk, crypto_box_PUBLICKEYBYTES);

    if (old) {
        FUNC4(g_c, groupnumber, old_real_pk, old_temp_pk);
    }

    if (!g->changed)
        g->changed = GROUPCHAT_CLOSEST_ADDED;

    return 0;
}