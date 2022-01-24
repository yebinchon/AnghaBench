#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct autofs_dev_ioctl {int /*<<< orphan*/  ver_minor; int /*<<< orphan*/  ver_major; } ;
struct TYPE_4__ {scalar_t__ dev_autofs_fd; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  AUTOFS_DEV_IOCTL_VERSION ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct autofs_dev_ioctl*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,struct autofs_dev_ioctl*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char*) ; 
 int FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(Manager *m) {
        struct autofs_dev_ioctl param;

        FUNC0(m);

        if (m->dev_autofs_fd >= 0)
                return m->dev_autofs_fd;

        (void) FUNC3("/dev/autofs", 0);

        m->dev_autofs_fd = FUNC6("/dev/autofs", O_CLOEXEC|O_RDONLY);
        if (m->dev_autofs_fd < 0)
                return FUNC5(errno, "Failed to open /dev/autofs: %m");

        FUNC1(&param);
        if (FUNC2(m->dev_autofs_fd, AUTOFS_DEV_IOCTL_VERSION, &param) < 0) {
                m->dev_autofs_fd = FUNC7(m->dev_autofs_fd);
                return -errno;
        }

        FUNC4("Autofs kernel version %i.%i", param.ver_major, param.ver_minor);

        return m->dev_autofs_fd;
}