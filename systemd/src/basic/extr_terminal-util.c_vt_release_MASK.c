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
 int /*<<< orphan*/  VT_RELDISP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 

int FUNC3(int fd, bool restore) {
        FUNC0(fd >= 0);

        /* This function releases the VT by acknowledging the VT-switch signal
         * sent by the kernel and optionally reset the VT in text and auto
         * VT-switching modes. */

        if (FUNC1(fd, VT_RELDISP, 1) < 0)
                return -errno;

        if (restore)
                return FUNC2(fd);

        return 0;
}