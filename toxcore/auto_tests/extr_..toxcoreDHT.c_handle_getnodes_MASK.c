#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  ping; int /*<<< orphan*/  self_public_key; } ;
typedef  int /*<<< orphan*/  IP_Port ;
typedef  TYPE_1__ DHT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int crypto_box_BEFORENMBYTES ; 
 int crypto_box_MACBYTES ; 
 int crypto_box_NONCEBYTES ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void *object, IP_Port source, const uint8_t *packet, uint16_t length)
{
    if (length != (1 + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES + crypto_box_PUBLICKEYBYTES + sizeof(
                       uint64_t) + crypto_box_MACBYTES))
        return 1;

    DHT *dht = object;

    /* Check if packet is from ourself. */
    if (FUNC3(packet + 1, dht->self_public_key))
        return 1;

    uint8_t plain[crypto_box_PUBLICKEYBYTES + sizeof(uint64_t)];
    uint8_t shared_key[crypto_box_BEFORENMBYTES];

    FUNC0(dht, shared_key, packet + 1);
    int len = FUNC2( shared_key,
                                      packet + 1 + crypto_box_PUBLICKEYBYTES,
                                      packet + 1 + crypto_box_PUBLICKEYBYTES + crypto_box_NONCEBYTES,
                                      crypto_box_PUBLICKEYBYTES + sizeof(uint64_t) + crypto_box_MACBYTES,
                                      plain );

    if (len != crypto_box_PUBLICKEYBYTES + sizeof(uint64_t))
        return 1;

    FUNC4(dht, source, packet + 1, plain, plain + crypto_box_PUBLICKEYBYTES, sizeof(uint64_t), shared_key);

    FUNC1(dht->ping, packet + 1, source);

    return 0;
}