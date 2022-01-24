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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  packet ;
typedef  int /*<<< orphan*/  TCP_Client_Connection ;

/* Variables and functions */
 scalar_t__ TCP_MAX_OOB_DATA_LENGTH ; 
 int /*<<< orphan*/  TCP_PACKET_OOB_SEND ; 
 int crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC2(TCP_Client_Connection *con, const uint8_t *public_key, const uint8_t *data, uint16_t length)
{
    if (length == 0 || length > TCP_MAX_OOB_DATA_LENGTH)
        return -1;

    uint8_t packet[1 + crypto_box_PUBLICKEYBYTES + length];
    packet[0] = TCP_PACKET_OOB_SEND;
    FUNC0(packet + 1, public_key, crypto_box_PUBLICKEYBYTES);
    FUNC0(packet + 1 + crypto_box_PUBLICKEYBYTES, data, length);
    return FUNC1(con, packet, sizeof(packet), 0);
}