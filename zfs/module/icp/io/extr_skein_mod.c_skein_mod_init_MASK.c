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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  modlinkage ; 
 int /*<<< orphan*/  skein_prov_handle ; 
 int /*<<< orphan*/  skein_prov_info ; 

int
FUNC2(void)
{
	int error;

	if ((error = FUNC1(&modlinkage)) != 0)
		return (error);

	/*
	 * Try to register with KCF - failure shouldn't unload us, since we
	 * still may want to continue providing misc/skein functionality.
	 */
	(void) FUNC0(&skein_prov_info, &skein_prov_handle);

	return (0);
}