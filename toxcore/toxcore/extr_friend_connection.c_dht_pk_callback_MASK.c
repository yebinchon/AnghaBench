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
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_8__ {int crypt_connection_id; int /*<<< orphan*/  onion_friendnum; int /*<<< orphan*/  dht_temp_pk; } ;
struct TYPE_7__ {int /*<<< orphan*/  onion_c; int /*<<< orphan*/  net_crypto; } ;
typedef  TYPE_1__ Friend_Connections ;
typedef  TYPE_2__ Friend_Conn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC7(void *object, int32_t number, const uint8_t *dht_public_key)
{
    Friend_Connections *fr_c = object;
    Friend_Conn *friend_con = FUNC3(fr_c, number);

    if (!friend_con)
        return;

    if (FUNC6(friend_con->dht_temp_pk, dht_public_key) == 0)
        return;

    FUNC0(fr_c, number, dht_public_key);

    /* if pk changed, create a new connection.*/
    if (friend_con->crypt_connection_id != -1) {
        FUNC1(fr_c->net_crypto, friend_con->crypt_connection_id);
        friend_con->crypt_connection_id = -1;
        FUNC4(object, number, 0); /* Going offline. */
    }

    FUNC2(fr_c, number);
    FUNC5(fr_c->onion_c, friend_con->onion_friendnum, dht_public_key);
}