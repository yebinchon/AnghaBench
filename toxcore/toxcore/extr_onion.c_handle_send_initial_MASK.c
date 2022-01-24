#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_6__ {TYPE_1__* dht; int /*<<< orphan*/  shared_keys_1; } ;
struct TYPE_5__ {int /*<<< orphan*/  self_secret_key; } ;
typedef  TYPE_2__ Onion ;
typedef  int /*<<< orphan*/  IP_Port ;

/* Variables and functions */
 scalar_t__ ONION_MAX_PACKET_SIZE ; 
 scalar_t__ SEND_1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int crypto_box_BEFORENMBYTES ; 
 int crypto_box_MACBYTES ; 
 int crypto_box_NONCEBYTES ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC4(void *object, IP_Port source, const uint8_t *packet, uint16_t length)
{
    Onion *onion = object;

    if (length > ONION_MAX_PACKET_SIZE)
        return 1;

    if (length <= 1 + SEND_1)
        return 1;

    FUNC0(onion);

    uint8_t plain[ONION_MAX_PACKET_SIZE];
    uint8_t shared_key[crypto_box_BEFORENMBYTES];
    FUNC2(&onion->shared_keys_1, shared_key, onion->dht->self_secret_key, packet + 1 + crypto_box_NONCEBYTES);
    int len = FUNC1(shared_key, packet + 1, packet + 1 + crypto_box_NONCEBYTES + crypto_box_PUBLICKEYBYTES,
                                     length - (1 + crypto_box_NONCEBYTES + crypto_box_PUBLICKEYBYTES), plain);

    if (len != length - (1 + crypto_box_NONCEBYTES + crypto_box_PUBLICKEYBYTES + crypto_box_MACBYTES))
        return 1;

    return FUNC3(onion, plain, len, source, packet + 1);
}