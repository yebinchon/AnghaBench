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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  pk ;
typedef  int /*<<< orphan*/  ping_plain ;
typedef  int /*<<< orphan*/  ping_id ;
struct TYPE_5__ {TYPE_1__* dht; } ;
struct TYPE_4__ {int /*<<< orphan*/  net; int /*<<< orphan*/  self_public_key; } ;
typedef  TYPE_2__ PING ;
typedef  int /*<<< orphan*/  IP_Port ;

/* Variables and functions */
 int DHT_PING_SIZE ; 
 int /*<<< orphan*/  NET_PACKET_PING_RESPONSE ; 
 int PING_PLAIN_SIZE ; 
 int crypto_box_MACBYTES ; 
 int crypto_box_NONCEBYTES ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(PING *ping, IP_Port ipp, const uint8_t *public_key, uint64_t ping_id,
                              uint8_t *shared_encryption_key)
{
    uint8_t   pk[DHT_PING_SIZE];
    int       rc;

    if (FUNC2(public_key, ping->dht->self_public_key))
        return 1;

    uint8_t ping_plain[PING_PLAIN_SIZE];
    ping_plain[0] = NET_PACKET_PING_RESPONSE;
    FUNC3(ping_plain + 1, &ping_id, sizeof(ping_id));

    pk[0] = NET_PACKET_PING_RESPONSE;
    FUNC1(pk + 1, ping->dht->self_public_key);     // Our pubkey
    FUNC4(pk + 1 + crypto_box_PUBLICKEYBYTES); // Generate new nonce

    // Encrypt ping_id using recipient privkey
    rc = FUNC0(shared_encryption_key,
                                pk + 1 + crypto_box_PUBLICKEYBYTES,
                                ping_plain, sizeof(ping_plain),
                                pk + 1 + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES );

    if (rc != PING_PLAIN_SIZE + crypto_box_MACBYTES)
        return 1;

    return FUNC5(ping->dht->net, ipp, pk, sizeof(pk));
}