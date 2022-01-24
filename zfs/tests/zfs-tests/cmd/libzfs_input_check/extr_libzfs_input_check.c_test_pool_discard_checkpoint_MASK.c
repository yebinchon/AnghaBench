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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int ZFS_ERR_CHECKPOINT_EXISTS ; 
 int /*<<< orphan*/  ZFS_IOC_POOL_DISCARD_CHECKPOINT ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static void
FUNC2(const char *pool)
{
	int err = FUNC1(pool);
	if (err == 0 || err == ZFS_ERR_CHECKPOINT_EXISTS)
		FUNC0(ZFS_IOC_POOL_DISCARD_CHECKPOINT, pool, NULL,
		    NULL, 0);
}