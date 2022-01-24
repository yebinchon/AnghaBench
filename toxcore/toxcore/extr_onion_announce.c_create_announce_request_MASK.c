#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  const uint64_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  sendback_data ;
typedef  int /*<<< orphan*/  plain ;

/* Variables and functions */
 int /*<<< orphan*/  NET_PACKET_ANNOUNCE_REQUEST ; 
 scalar_t__ ONION_ANNOUNCE_REQUEST_SIZE ; 
 int ONION_ANNOUNCE_SENDBACK_DATA_LENGTH ; 
 int ONION_PING_ID_SIZE ; 
 int crypto_box_NONCEBYTES ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(uint8_t *packet, uint16_t max_packet_length, const uint8_t *dest_client_id,
                            const uint8_t *public_key, const uint8_t *secret_key, const uint8_t *ping_id, const uint8_t *client_id,
                            const uint8_t *data_public_key, uint64_t sendback_data)
{
    if (max_packet_length < ONION_ANNOUNCE_REQUEST_SIZE)
        return -1;

    uint8_t plain[ONION_PING_ID_SIZE + crypto_box_PUBLICKEYBYTES + crypto_box_PUBLICKEYBYTES +
                  ONION_ANNOUNCE_SENDBACK_DATA_LENGTH];
    FUNC1(plain, ping_id, ONION_PING_ID_SIZE);
    FUNC1(plain + ONION_PING_ID_SIZE, client_id, crypto_box_PUBLICKEYBYTES);
    FUNC1(plain + ONION_PING_ID_SIZE + crypto_box_PUBLICKEYBYTES, data_public_key, crypto_box_PUBLICKEYBYTES);
    FUNC1(plain + ONION_PING_ID_SIZE + crypto_box_PUBLICKEYBYTES + crypto_box_PUBLICKEYBYTES, &sendback_data,
           sizeof(sendback_data));

    packet[0] = NET_PACKET_ANNOUNCE_REQUEST;
    FUNC2(packet + 1);

    int len = FUNC0(dest_client_id, secret_key, packet + 1, plain, sizeof(plain),
                           packet + 1 + crypto_box_NONCEBYTES + crypto_box_PUBLICKEYBYTES);

    if ((uint32_t)len + 1 + crypto_box_NONCEBYTES + crypto_box_PUBLICKEYBYTES != ONION_ANNOUNCE_REQUEST_SIZE)
        return -1;

    FUNC1(packet + 1 + crypto_box_NONCEBYTES, public_key, crypto_box_PUBLICKEYBYTES);

    return ONION_ANNOUNCE_REQUEST_SIZE;
}