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
 int EACCES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  aes_prov_handle ; 
 int /*<<< orphan*/  aes_prov_info ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  modlinkage ; 

int
FUNC5(void)
{
	int ret;

	/* Determine the fastest available implementation. */
	FUNC0();
	FUNC2();

	if ((ret = FUNC3(&modlinkage)) != 0)
		return (ret);

	/* Register with KCF.  If the registration fails, remove the module. */
	if (FUNC1(&aes_prov_info, &aes_prov_handle)) {
		(void) FUNC4(&modlinkage);
		return (EACCES);
	}

	return (0);
}