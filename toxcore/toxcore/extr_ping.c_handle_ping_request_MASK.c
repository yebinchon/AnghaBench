#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  ping_plain ;
typedef  int /*<<< orphan*/  ping_id ;
struct TYPE_9__ {TYPE_2__* ping; } ;
struct TYPE_8__ {TYPE_1__* dht; } ;
struct TYPE_7__ {int /*<<< orphan*/  self_public_key; } ;
typedef  TYPE_2__ PING ;
typedef  int /*<<< orphan*/  IP_Port ;
typedef  TYPE_3__ DHT ;

/* Variables and functions */
 scalar_t__ DHT_PING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__*,scalar_t__ const*) ; 
 scalar_t__ NET_PACKET_PING_REQUEST ; 
 int PING_PLAIN_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__ const*,int /*<<< orphan*/ ) ; 
 int crypto_box_BEFORENMBYTES ; 
 int crypto_box_MACBYTES ; 
 int crypto_box_NONCEBYTES ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int FUNC2 (scalar_t__*,scalar_t__ const*,scalar_t__ const*,int,scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__ const*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC6(void *_dht, IP_Port source, const uint8_t *packet, uint16_t length)
{
    DHT       *dht = _dht;
    int        rc;

    if (length != DHT_PING_SIZE)
        return 1;

    PING *ping = dht->ping;

    if (FUNC3(packet + 1, ping->dht->self_public_key))
        return 1;

    uint8_t shared_key[crypto_box_BEFORENMBYTES];

    uint8_t ping_plain[PING_PLAIN_SIZE];
    // Decrypt ping_id
    FUNC0(dht, shared_key, packet + 1);
    rc = FUNC2(shared_key,
                                packet + 1 + crypto_box_PUBLICKEYBYTES,
                                packet + 1 + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES,
                                PING_PLAIN_SIZE + crypto_box_MACBYTES,
                                ping_plain );

    if (rc != sizeof(ping_plain))
        return 1;

    if (ping_plain[0] != NET_PACKET_PING_REQUEST)
        return 1;

    uint64_t   ping_id;
    FUNC4(&ping_id, ping_plain + 1, sizeof(ping_id));
    // Send response
    FUNC5(ping, source, packet + 1, ping_id, shared_key);
    FUNC1(ping, packet + 1, source);

    return 0;
}