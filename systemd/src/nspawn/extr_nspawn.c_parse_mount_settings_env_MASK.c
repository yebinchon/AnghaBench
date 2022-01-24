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
 int ENXIO ; 
 int MOUNT_APPLY_APIVFS_NETNS ; 
 int MOUNT_APPLY_APIVFS_RO ; 
 int MOUNT_APPLY_TMPFS_TMP ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int arg_mount_settings ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (int,char*) ; 
 int FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static int FUNC6(void) {
        const char *e;
        int r;

        r = FUNC2("SYSTEMD_NSPAWN_TMPFS_TMP");
        if (r < 0 && r != -ENXIO)
                return FUNC3(r, "Failed to parse $SYSTEMD_NSPAWN_TMPFS_TMP: %m");
        if (r >= 0)
                FUNC0(arg_mount_settings, MOUNT_APPLY_TMPFS_TMP, r > 0);

        e = FUNC1("SYSTEMD_NSPAWN_API_VFS_WRITABLE");
        if (FUNC5(e, "network"))
                arg_mount_settings |= MOUNT_APPLY_APIVFS_RO|MOUNT_APPLY_APIVFS_NETNS;

        else if (e) {
                r = FUNC4(e);
                if (r < 0)
                        return FUNC3(r, "Failed to parse $SYSTEMD_NSPAWN_API_VFS_WRITABLE: %m");

                FUNC0(arg_mount_settings, MOUNT_APPLY_APIVFS_RO, r == 0);
                FUNC0(arg_mount_settings, MOUNT_APPLY_APIVFS_NETNS, false);
        }

        return 0;
}