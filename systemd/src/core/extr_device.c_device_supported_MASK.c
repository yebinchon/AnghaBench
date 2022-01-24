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

/* Variables and functions */
 int FUNC0 (char*) ; 

__attribute__((used)) static bool FUNC1(void) {
        static int read_only = -1;

        /* If /sys is read-only we don't support device units, and any
         * attempts to start one should fail immediately. */

        if (read_only < 0)
                read_only = FUNC0("/sys");

        return read_only <= 0;
}