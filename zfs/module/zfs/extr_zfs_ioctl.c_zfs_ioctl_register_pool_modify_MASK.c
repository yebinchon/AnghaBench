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
typedef  int /*<<< orphan*/  zfs_ioc_t ;
typedef  int /*<<< orphan*/  zfs_ioc_legacy_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int POOL_CHECK_READONLY ; 
 int POOL_CHECK_SUSPENDED ; 
 int /*<<< orphan*/  POOL_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  zfs_secpolicy_config ; 

__attribute__((used)) static void
FUNC1(zfs_ioc_t ioc, zfs_ioc_legacy_func_t *func)
{
	FUNC0(ioc, func, zfs_secpolicy_config,
	    POOL_NAME, B_TRUE, POOL_CHECK_SUSPENDED | POOL_CHECK_READONLY);
}