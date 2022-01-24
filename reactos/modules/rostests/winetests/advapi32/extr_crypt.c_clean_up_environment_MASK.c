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
typedef  int /*<<< orphan*/  HCRYPTPROV ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_DELETEKEYSET ; 
 int /*<<< orphan*/  PROV_RSA_FULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  szBadKeySet ; 
 int /*<<< orphan*/  szKeySet ; 
 int /*<<< orphan*/ * szRsaBaseProv ; 

__attribute__((used)) static void FUNC2(void)
{
	HCRYPTPROV hProv;

	/* Remove container "wine_test_keyset" */
	if (FUNC0(&hProv, szKeySet, szRsaBaseProv, PROV_RSA_FULL, 0))
	{
		FUNC1(hProv, 0);
		FUNC0(&hProv, szKeySet, szRsaBaseProv, PROV_RSA_FULL, CRYPT_DELETEKEYSET);
	}

	/* Remove container "wine_test_keyset" from default PROV_RSA_FULL type provider */
	if (FUNC0(&hProv, szKeySet, NULL, PROV_RSA_FULL, 0))
	{
		FUNC1(hProv, 0);
		FUNC0(&hProv, szKeySet, NULL, PROV_RSA_FULL, CRYPT_DELETEKEYSET);
	}

        /* Remove container "wine_test_bad_keyset" */
        if (FUNC0(&hProv, szBadKeySet, szRsaBaseProv, PROV_RSA_FULL, 0))
        {
                FUNC1(hProv, 0);
                FUNC0(&hProv, szBadKeySet, szRsaBaseProv, PROV_RSA_FULL, CRYPT_DELETEKEYSET);
        }
}