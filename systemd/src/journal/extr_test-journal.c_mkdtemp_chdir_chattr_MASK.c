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
 int /*<<< orphan*/  FS_NOCOW_FL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(char *path) {
        FUNC0(FUNC3(path));
        FUNC0(FUNC2(path) >= 0);

        /* Speed up things a bit on btrfs, ensuring that CoW is turned off for all files created in our
         * directory during the test run */
        (void) FUNC1(path, FS_NOCOW_FL, FS_NOCOW_FL, NULL);
}