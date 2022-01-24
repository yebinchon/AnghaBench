#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  sub_version; } ;
struct TYPE_3__ {int /*<<< orphan*/  version; } ;
struct autofs_dev_ioctl {int ioctlfd; TYPE_2__ protosubver; TYPE_1__ protover; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTOFS_DEV_IOCTL_PROTOSUBVER ; 
 int /*<<< orphan*/  AUTOFS_DEV_IOCTL_PROTOVER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct autofs_dev_ioctl*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct autofs_dev_ioctl*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(int dev_autofs_fd, int ioctl_fd) {
        uint32_t major, minor;
        struct autofs_dev_ioctl param;

        FUNC0(dev_autofs_fd >= 0);
        FUNC0(ioctl_fd >= 0);

        FUNC1(&param);
        param.ioctlfd = ioctl_fd;

        if (FUNC2(dev_autofs_fd, AUTOFS_DEV_IOCTL_PROTOVER, &param) < 0)
                return -errno;

        major = param.protover.version;

        FUNC1(&param);
        param.ioctlfd = ioctl_fd;

        if (FUNC2(dev_autofs_fd, AUTOFS_DEV_IOCTL_PROTOSUBVER, &param) < 0)
                return -errno;

        minor = param.protosubver.sub_version;

        FUNC3("Autofs protocol version %i.%i", major, minor);
        return 0;
}