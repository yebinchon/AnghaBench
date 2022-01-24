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
typedef  int /*<<< orphan*/  sock_t ;

/* Variables and functions */
 scalar_t__ MAX_PACKET_SIZE ; 
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

uint16_t FUNC4(sock_t sock)
{
    unsigned int count = FUNC0(sock);

    if (count >= sizeof(uint16_t)) {
        uint16_t length;
        int len = FUNC3(sock, (uint8_t *)&length, sizeof(uint16_t), MSG_NOSIGNAL);

        if (len != sizeof(uint16_t)) {
            FUNC1(stderr, "FAIL recv packet\n");
            return 0;
        }

        length = FUNC2(length);

        if (length > MAX_PACKET_SIZE) {
            return ~0;
        }

        return length;
    }

    return 0;
}