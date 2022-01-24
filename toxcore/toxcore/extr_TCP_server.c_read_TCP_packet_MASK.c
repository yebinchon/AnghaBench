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
typedef  unsigned int uint16_t ;
typedef  int /*<<< orphan*/  sock_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC3(sock_t sock, uint8_t *data, uint16_t length)
{
    unsigned int count = FUNC0(sock);

    if (count >= length) {
        int len = FUNC2(sock, data, length, MSG_NOSIGNAL);

        if (len != length) {
            FUNC1(stderr, "FAIL recv packet\n");
            return -1;
        }

        return len;
    }

    return -1;
}