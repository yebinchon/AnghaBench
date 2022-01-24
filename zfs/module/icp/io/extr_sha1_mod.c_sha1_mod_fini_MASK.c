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
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  modlinkage ; 
 scalar_t__ sha1_prov_handle ; 

int
FUNC3(void)
{
	int ret;

	if (sha1_prov_handle != 0) {
		if ((ret = FUNC1(sha1_prov_handle)) !=
		    CRYPTO_SUCCESS) {
			FUNC0(CE_WARN,
			    "sha1 _fini: crypto_unregister_provider() "
			    "failed (0x%x)", ret);
			return (EBUSY);
		}
		sha1_prov_handle = 0;
	}

	return (FUNC2(&modlinkage));
}