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
 scalar_t__ FUNC0 () ; 
 scalar_t__ downgrade_to_apache_enabled ; 
 int /*<<< orphan*/ * ts_guc_license_key ; 
 int /*<<< orphan*/ * tsl_handle ; 

__attribute__((used)) static bool
FUNC1(void)
{
	if (downgrade_to_apache_enabled)
		return true;

	return (ts_guc_license_key == NULL || FUNC0()) &&
		   tsl_handle == NULL;
}