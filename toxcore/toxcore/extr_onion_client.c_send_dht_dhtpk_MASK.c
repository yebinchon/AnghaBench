#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  temp ;
struct TYPE_9__ {int /*<<< orphan*/  self_secret_key; int /*<<< orphan*/  self_public_key; } ;
struct TYPE_8__ {scalar_t__ num_friends; TYPE_2__* friends_list; TYPE_5__* dht; TYPE_1__* c; } ;
struct TYPE_7__ {int /*<<< orphan*/  dht_public_key; int /*<<< orphan*/  real_public_key; int /*<<< orphan*/  know_dht_public_key; } ;
struct TYPE_6__ {int /*<<< orphan*/  self_secret_key; int /*<<< orphan*/ * self_public_key; } ;
typedef  TYPE_3__ Onion_Client ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_PACKET_DHTPK ; 
 int /*<<< orphan*/  DATA_IN_RESPONSE_MIN_SIZE ; 
 int MAX_CRYPTO_REQUEST_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int crypto_box_NONCEBYTES ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(const Onion_Client *onion_c, int friend_num, const uint8_t *data, uint16_t length)
{
    if ((uint32_t)friend_num >= onion_c->num_friends)
        return -1;

    if (!onion_c->friends_list[friend_num].know_dht_public_key)
        return -1;

    uint8_t nonce[crypto_box_NONCEBYTES];
    FUNC3(nonce);

    uint8_t temp[DATA_IN_RESPONSE_MIN_SIZE + crypto_box_NONCEBYTES + length];
    FUNC2(temp, onion_c->c->self_public_key, crypto_box_PUBLICKEYBYTES);
    FUNC2(temp + crypto_box_PUBLICKEYBYTES, nonce, crypto_box_NONCEBYTES);
    int len = FUNC1(onion_c->friends_list[friend_num].real_public_key, onion_c->c->self_secret_key, nonce, data,
                           length, temp + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES);

    if ((uint32_t)len + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES != sizeof(temp))
        return -1;

    uint8_t packet[MAX_CRYPTO_REQUEST_SIZE];
    len = FUNC0(onion_c->dht->self_public_key, onion_c->dht->self_secret_key, packet,
                         onion_c->friends_list[friend_num].dht_public_key, temp, sizeof(temp), CRYPTO_PACKET_DHTPK);

    if (len == -1)
        return -1;

    return FUNC4(onion_c->dht, onion_c->friends_list[friend_num].dht_public_key, packet, len);
}