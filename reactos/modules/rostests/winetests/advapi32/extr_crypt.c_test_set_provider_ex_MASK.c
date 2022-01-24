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
typedef  int /*<<< orphan*/ * LPSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int CRYPT_DELETE_DEFAULT ; 
 int CRYPT_MACHINE_DEFAULT ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  LMEM_ZEROINIT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * MS_DEF_PROV_A ; 
 int /*<<< orphan*/  PROV_RSA_FULL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void FUNC13(void)
{
	DWORD result;
	DWORD notNull = 5;
        LPSTR curProvName = NULL;
        DWORD curlen;
	
	/* results */
	LPSTR pszProvName = NULL;
	DWORD cbProvName;
	
	if(!&pCryptGetDefaultProviderA || !&pCryptSetProviderExA)
	{
	    FUNC12("CryptGetDefaultProviderA and/or CryptSetProviderExA are not available\n");
	    return;
	}

        /* store the current one */
        FUNC7(PROV_RSA_FULL, NULL, CRYPT_MACHINE_DEFAULT, NULL, &curlen);
        if (!(curProvName = FUNC1(LMEM_ZEROINIT, curlen)))
            return;
        result = FUNC7(PROV_RSA_FULL, NULL, CRYPT_MACHINE_DEFAULT, curProvName, &curlen);
        FUNC6(result, "%d\n", FUNC0());

	/* check pdwReserved for NULL */
	result = FUNC8(MS_DEF_PROV_A, PROV_RSA_FULL, &notNull, CRYPT_MACHINE_DEFAULT);
	FUNC6(!result && FUNC0()==ERROR_INVALID_PARAMETER, "expected %i, got %d\n",
		ERROR_INVALID_PARAMETER, FUNC0());

	/* remove the default provider and then set it to MS_DEF_PROV/PROV_RSA_FULL */
        FUNC3(0xdeadbeef);
	result = FUNC8(MS_DEF_PROV_A, PROV_RSA_FULL, NULL, CRYPT_MACHINE_DEFAULT | CRYPT_DELETE_DEFAULT);
	if (!result)
	{
                FUNC6( FUNC0() == ERROR_ACCESS_DENIED || FUNC4(FUNC0() == ERROR_INVALID_PARAMETER),
                    "wrong error %u\n", FUNC0() );
		FUNC9("Not enough rights to remove the default provider\n");
                FUNC2(curProvName);
		return;
	}

	result = FUNC8(MS_DEF_PROV_A, PROV_RSA_FULL, NULL, CRYPT_MACHINE_DEFAULT);
	FUNC6(result, "%d\n", FUNC0());
	
	/* call CryptGetDefaultProvider to see if they match */
	result = FUNC7(PROV_RSA_FULL, NULL, CRYPT_MACHINE_DEFAULT, NULL, &cbProvName);
	FUNC6(result, "%d\n", FUNC0());
	if (!(pszProvName = FUNC1(LMEM_ZEROINIT, cbProvName)))
		goto reset;

	result = FUNC7(PROV_RSA_FULL, NULL, CRYPT_MACHINE_DEFAULT, pszProvName, &cbProvName);
	FUNC6(result && !FUNC10(MS_DEF_PROV_A, pszProvName), "expected %s, got %s\n", MS_DEF_PROV_A, pszProvName);
	FUNC6(result && cbProvName==(FUNC11(MS_DEF_PROV_A) + 1), "expected %i, got %d\n", (FUNC5(MS_DEF_PROV_A) + 1), cbProvName);

	FUNC2(pszProvName);

reset:
        /* Set the provider back to its original */
        result = FUNC8(curProvName, PROV_RSA_FULL, NULL, CRYPT_MACHINE_DEFAULT);
        FUNC6(result, "%d\n", FUNC0());
        FUNC2(curProvName);
}