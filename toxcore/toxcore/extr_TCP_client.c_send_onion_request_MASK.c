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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  packet ;
typedef  int /*<<< orphan*/  TCP_Client_Connection ;

/* Variables and functions */
 int /*<<< orphan*/  TCP_PACKET_ONION_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int FUNC2(TCP_Client_Connection *con, const uint8_t *data, uint16_t length)
{
    uint8_t packet[1 + length];
    packet[0] = TCP_PACKET_ONION_REQUEST;
    FUNC0(packet + 1, data, length);
    return FUNC1(con, packet, sizeof(packet), 0);
}