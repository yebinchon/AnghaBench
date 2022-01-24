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
 int /*<<< orphan*/  dataset_props_kobj ; 
 int /*<<< orphan*/  kernel_features_kobj ; 
 int /*<<< orphan*/  pool_features_kobj ; 
 int /*<<< orphan*/  pool_props_kobj ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(void)
{
	/*
	 * Remove top-level kobjects; each will remove any children kobjects
	 */
	FUNC0(&kernel_features_kobj);
	FUNC0(&pool_features_kobj);
	FUNC0(&dataset_props_kobj);
	FUNC0(&pool_props_kobj);
}