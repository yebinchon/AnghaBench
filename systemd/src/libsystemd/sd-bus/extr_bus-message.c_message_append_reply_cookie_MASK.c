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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  sd_bus_message ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_MESSAGE_HEADER_REPLY_SERIAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(sd_bus_message *m, uint64_t cookie) {
        FUNC1(m);

        if (FUNC0(m))
                return FUNC3(m, BUS_MESSAGE_HEADER_REPLY_SERIAL, cookie);
        else {
                /* 64bit cookies are not supported on dbus1 */
                if (cookie > 0xffffffffUL)
                        return -EOPNOTSUPP;

                return FUNC2(m, BUS_MESSAGE_HEADER_REPLY_SERIAL, (uint32_t) cookie);
        }
}