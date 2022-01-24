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
 int /*<<< orphan*/  MS_BIND ; 
 int /*<<< orphan*/  MS_PRIVATE ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void) {
        if (FUNC1("/run/initramfs", "/run/initramfs", NULL, MS_BIND, NULL) < 0)
                return FUNC0(errno, "Failed to mount bind /run/initramfs on /run/initramfs: %m");

        if (FUNC1(NULL, "/run/initramfs", NULL, MS_PRIVATE, NULL) < 0)
                return FUNC0(errno, "Failed to make /run/initramfs private mount: %m");

        /* switch_root with MS_BIND, because there might still be processes lurking around, which have open file descriptors.
         * /run/initramfs/shutdown will take care of these.
         * Also do not detach the old root, because /run/initramfs/shutdown needs to access it.
         */
        return FUNC2("/run/initramfs", "/oldroot", false, MS_BIND);
}