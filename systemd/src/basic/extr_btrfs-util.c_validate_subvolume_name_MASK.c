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
 scalar_t__ BTRFS_SUBVOL_NAME_MAX ; 
 int E2BIG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const char *name) {

        if (!FUNC0(name))
                return -EINVAL;

        if (FUNC1(name) > BTRFS_SUBVOL_NAME_MAX)
                return -E2BIG;

        return 0;
}