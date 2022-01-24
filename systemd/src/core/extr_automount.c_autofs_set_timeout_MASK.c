#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ usec_t ;
struct TYPE_2__ {scalar_t__ timeout; } ;
struct autofs_dev_ioctl {int ioctlfd; TYPE_1__ timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTOFS_DEV_IOCTL_TIMEOUT ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ USEC_INFINITY ; 
 int /*<<< orphan*/  USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (struct autofs_dev_ioctl*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct autofs_dev_ioctl*) ; 

__attribute__((used)) static int FUNC4(int dev_autofs_fd, int ioctl_fd, usec_t usec) {
        struct autofs_dev_ioctl param;

        FUNC1(dev_autofs_fd >= 0);
        FUNC1(ioctl_fd >= 0);

        FUNC2(&param);
        param.ioctlfd = ioctl_fd;

        if (usec == USEC_INFINITY)
                param.timeout.timeout = 0;
        else
                /* Convert to seconds, rounding up. */
                param.timeout.timeout = FUNC0(usec, USEC_PER_SEC);

        if (FUNC3(dev_autofs_fd, AUTOFS_DEV_IOCTL_TIMEOUT, &param) < 0)
                return -errno;

        return 0;
}