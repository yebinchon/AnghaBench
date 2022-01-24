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
 int BTRFS_SNAPSHOT_FALLBACK_COPY ; 
 int BTRFS_SNAPSHOT_FALLBACK_DIRECTORY ; 
 int BTRFS_SNAPSHOT_QUOTA ; 
 int BTRFS_SNAPSHOT_RECURSIVE ; 
 int REMOVE_PHYSICAL ; 
 int REMOVE_ROOT ; 
 int REMOVE_SUBVOLUME ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (char const*,char const*,int) ; 
 int FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 char* FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int) ; 

int FUNC6(const char *final, const char *image_root, const char *local, bool force_local) {
        const char *p;
        int r;

        FUNC0(final);
        FUNC0(local);

        if (!image_root)
                image_root = "/var/lib/machines";

        p = FUNC4(image_root, local);

        if (force_local)
                (void) FUNC5(p, REMOVE_ROOT|REMOVE_PHYSICAL|REMOVE_SUBVOLUME);

        r = FUNC1(final, p,
                                  BTRFS_SNAPSHOT_QUOTA|
                                  BTRFS_SNAPSHOT_FALLBACK_COPY|
                                  BTRFS_SNAPSHOT_FALLBACK_DIRECTORY|
                                  BTRFS_SNAPSHOT_RECURSIVE);
        if (r < 0)
                return FUNC2(r, "Failed to create local image: %m");

        FUNC3("Created new local image '%s'.", local);

        return 0;
}