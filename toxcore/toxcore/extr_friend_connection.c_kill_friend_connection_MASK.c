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
struct TYPE_8__ {scalar_t__ dht_lock; int /*<<< orphan*/  dht_temp_pk; int /*<<< orphan*/  crypt_connection_id; int /*<<< orphan*/  onion_friendnum; scalar_t__ lock_count; } ;
struct TYPE_7__ {int /*<<< orphan*/  dht; int /*<<< orphan*/  net_crypto; int /*<<< orphan*/  onion_c; } ;
typedef  TYPE_1__ Friend_Connections ;
typedef  TYPE_2__ Friend_Conn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int) ; 

int FUNC5(Friend_Connections *fr_c, int friendcon_id)
{
    Friend_Conn *friend_con = FUNC2(fr_c, friendcon_id);

    if (!friend_con)
        return -1;

    if (friend_con->lock_count) {
        --friend_con->lock_count;
        return 0;
    }

    FUNC3(fr_c->onion_c, friend_con->onion_friendnum);
    FUNC1(fr_c->net_crypto, friend_con->crypt_connection_id);

    if (friend_con->dht_lock) {
        FUNC0(fr_c->dht, friend_con->dht_temp_pk, friend_con->dht_lock);
    }

    return FUNC4(fr_c, friendcon_id);
}