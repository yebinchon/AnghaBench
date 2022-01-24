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
struct TYPE_8__ {int /*<<< orphan*/  dht_temp_pk; scalar_t__ dht_lock; int /*<<< orphan*/  dht_pk_lastrecv; } ;
struct TYPE_7__ {int /*<<< orphan*/  dht; } ;
typedef  TYPE_1__ Friend_Connections ;
typedef  TYPE_2__ Friend_Conn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,TYPE_1__*,int,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  dht_ip_callback ; 
 TYPE_2__* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(Friend_Connections *fr_c, int friendcon_id, const uint8_t *dht_public_key)
{
    Friend_Conn *friend_con = FUNC2(fr_c, friendcon_id);

    if (!friend_con)
        return;

    friend_con->dht_pk_lastrecv = FUNC5();

    if (friend_con->dht_lock) {
        if (FUNC1(fr_c->dht, friend_con->dht_temp_pk, friend_con->dht_lock) != 0) {
            FUNC4("a. Could not delete dht peer. Please report this.\n");
            return;
        }

        friend_con->dht_lock = 0;
    }

    FUNC0(fr_c->dht, dht_public_key, dht_ip_callback, fr_c, friendcon_id, &friend_con->dht_lock);
    FUNC3(friend_con->dht_temp_pk, dht_public_key, crypto_box_PUBLICKEYBYTES);
}