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
 int /*<<< orphan*/  CE_WARN ; 
 int CRYPTO_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  modlinkage ; 
 int /*<<< orphan*/  sha1_prov_handle ; 
 int /*<<< orphan*/  sha1_prov_info ; 

int
FUNC3(void)
{
	int ret;

	if ((ret = FUNC2(&modlinkage)) != 0)
		return (ret);

	/*
	 * Register with KCF. If the registration fails, log an
	 * error but do not uninstall the module, since the functionality
	 * provided by misc/sha1 should still be available.
	 */
	if ((ret = FUNC1(&sha1_prov_info,
	    &sha1_prov_handle)) != CRYPTO_SUCCESS)
		FUNC0(CE_WARN, "sha1 _init: "
		    "crypto_register_provider() failed (0x%x)", ret);

	return (0);
}