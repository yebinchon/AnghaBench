#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  self_secret_key; int /*<<< orphan*/  self_public_key; } ;
typedef  TYPE_1__ DHT ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_PACKET_NAT_PING ; 
 int MAX_CRYPTO_REQUEST_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int const*,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_1__*,int const*,int*,int) ; 
 int FUNC3 (TYPE_1__*,int const*,int*,int) ; 

__attribute__((used)) static int FUNC4(DHT *dht, const uint8_t *public_key, uint64_t ping_id, uint8_t type)
{
    uint8_t data[sizeof(uint64_t) + 1];
    uint8_t packet[MAX_CRYPTO_REQUEST_SIZE];

    int num = 0;

    data[0] = type;
    FUNC1(data + 1, &ping_id, sizeof(uint64_t));
    /* 254 is NAT ping request packet id */
    int len = FUNC0(dht->self_public_key, dht->self_secret_key, packet, public_key, data,
                             sizeof(uint64_t) + 1, CRYPTO_PACKET_NAT_PING);

    if (len == -1)
        return -1;

    if (type == 0) /* If packet is request use many people to route it. */
        num = FUNC2(dht, public_key, packet, len);
    else if (type == 1) /* If packet is response use only one person to route it */
        num = FUNC3(dht, public_key, packet, len);

    if (num == 0)
        return -1;

    return num;
}