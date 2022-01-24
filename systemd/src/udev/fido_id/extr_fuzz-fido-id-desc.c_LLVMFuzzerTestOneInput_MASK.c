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

/* Variables and functions */
 size_t HID_MAX_DESCRIPTOR_SIZE ; 
 int /*<<< orphan*/  LOG_CRIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(const uint8_t *data, size_t size) {
        /* We don't want to fill the logs with messages about parse errors.
         * Disable most logging if not running standalone */
        if (!FUNC0("SYSTEMD_LOG_LEVEL"))
                FUNC2(LOG_CRIT);

        if (size > HID_MAX_DESCRIPTOR_SIZE)
                return 0;
        (void) FUNC1(data, size);

        return 0;
}