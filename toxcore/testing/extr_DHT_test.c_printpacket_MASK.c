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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  IP_Port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(uint8_t *data, uint32_t length, IP_Port ip_port)
{
    uint32_t i;
    FUNC0("UNHANDLED PACKET RECEIVED\nLENGTH:%u\nCONTENTS:\n", length);
    FUNC0("--------------------BEGIN-----------------------------\n");

    for (i = 0; i < length; i++) {
        if (data[i] < 16)
            FUNC0("0");

        FUNC0("%hhX", data[i]);
    }

    FUNC0("\n--------------------END-----------------------------\n\n\n");
}