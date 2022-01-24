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
typedef  scalar_t__ HCRYPTPROV ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_ENVVAR_NOT_FOUND ; 
 scalar_t__ ERROR_NOT_LOGGED_ON ; 
 scalar_t__ ERROR_RING2_STACK_IN_USE ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 () ; 
 int NON_DEF_PROV_TYPE ; 
 scalar_t__ NTE_BAD_PROV_TYPE ; 
 scalar_t__ NTE_FAIL ; 
 scalar_t__ NTE_KEYSET_NOT_DEF ; 
 scalar_t__ NTE_PROV_TYPE_NOT_DEF ; 
 scalar_t__ NTE_PROV_TYPE_NO_MATCH ; 
 int PROV_RSA_FULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * szKeySet ; 
 char* szNonExistentProv ; 
 char* szRsaBaseProv ; 

__attribute__((used)) static void FUNC5(void)
{
	BOOL result;
	HCRYPTPROV hProv;
	DWORD GLE;

	/* Provoke all kinds of error conditions (which are easy to provoke). 
	 * The order of the error tests seems to match Windows XP's rsaenh.dll CSP,
	 * but since this is likely to change between CSP versions, we don't check
	 * this. Please don't change the order of tests. */
	result = FUNC3(&hProv, NULL, NULL, 0, 0);
	FUNC2(!result && FUNC0()==NTE_BAD_PROV_TYPE, "%d\n", FUNC0());
	
	result = FUNC3(&hProv, NULL, NULL, 1000, 0);
	FUNC2(!result && FUNC0()==NTE_BAD_PROV_TYPE, "%d\n", FUNC0());

	result = FUNC3(&hProv, NULL, NULL, NON_DEF_PROV_TYPE, 0);
	FUNC2(!result && FUNC0()==NTE_PROV_TYPE_NOT_DEF, "%d\n", FUNC0());
	
	result = FUNC3(&hProv, szKeySet, szNonExistentProv, PROV_RSA_FULL, 0);
	FUNC2(!result && FUNC0()==NTE_KEYSET_NOT_DEF, "%d\n", FUNC0());

	result = FUNC3(&hProv, szKeySet, szRsaBaseProv, NON_DEF_PROV_TYPE, 0);
	FUNC2(!result && FUNC0()==NTE_PROV_TYPE_NO_MATCH, "%d\n", FUNC0());
	
	/* This test fails under Win2k SP4:
	   result = TRUE, GetLastError() == ERROR_INVALID_PARAMETER
	SetLastError(0xdeadbeef);
	result = pCryptAcquireContextA(NULL, szKeySet, szRsaBaseProv, PROV_RSA_FULL, 0);
	ok(!result && GetLastError()==ERROR_INVALID_PARAMETER, "%d/%d\n", result, GetLastError());
	*/
	
	/* Last not least, try to really acquire a context. */
	hProv = 0;
	FUNC1(0xdeadbeef);
	result = FUNC3(&hProv, szKeySet, szRsaBaseProv, PROV_RSA_FULL, 0);
	GLE = FUNC0();
	FUNC2(result && (GLE == ERROR_ENVVAR_NOT_FOUND   || 
		      GLE == ERROR_SUCCESS            || 
		      GLE == ERROR_RING2_STACK_IN_USE || 
		      GLE == NTE_FAIL                 ||
		      GLE == ERROR_NOT_LOGGED_ON), "%d/%d\n", result, GLE);

	if (hProv) 
		FUNC4(hProv, 0);

	/* Try again, witch an empty ("\0") szProvider parameter */
	hProv = 0;
	FUNC1(0xdeadbeef);
	result = FUNC3(&hProv, szKeySet, "", PROV_RSA_FULL, 0);
	GLE = FUNC0();
	FUNC2(result && (GLE == ERROR_ENVVAR_NOT_FOUND   || 
		      GLE == ERROR_SUCCESS            || 
		      GLE == ERROR_RING2_STACK_IN_USE || 
		      GLE == NTE_FAIL                 ||
		      GLE == ERROR_NOT_LOGGED_ON), "%d/%d\n", result, FUNC0());

	if (hProv) 
		FUNC4(hProv, 0);
}