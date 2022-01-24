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
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AT_KEYEXCHANGE ; 
 int /*<<< orphan*/  AT_SIGNATURE ; 
 int /*<<< orphan*/  CALG_AES ; 
 int /*<<< orphan*/  CALG_AES_128 ; 
 int /*<<< orphan*/  CRYPT_NEWKEYSET ; 
 int /*<<< orphan*/  CRYPT_VERIFYCONTEXT ; 
 int FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  NTE_BAD_ALGID ; 
 int /*<<< orphan*/  NTE_BAD_FLAGS ; 
 int /*<<< orphan*/  NTE_BAD_KEYSET ; 
 int /*<<< orphan*/  NTE_PROV_TYPE_NOT_DEF ; 
 int /*<<< orphan*/  PROV_RSA_AES ; 
 int TRUE ; 
 scalar_t__ hProv ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,...) ; 
 void* pCryptDuplicateHash ; 
 int /*<<< orphan*/  szContainer ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static BOOL FUNC8(void)
{
    HCRYPTKEY hKey;
    BOOL result;

    pCryptDuplicateHash = (void *)FUNC5(FUNC4("advapi32.dll"), "CryptDuplicateHash");

    hProv = (HCRYPTPROV)INVALID_HANDLE_VALUE;

    /* we are using NULL as provider name for RSA_AES provider as the provider
     * names are different in Windows XP and Vista. This differs from what
     * is defined in the SDK on Windows XP.
     * This provider is available on Windows XP, Windows 2003 and Vista.      */

    result = FUNC0(&hProv, szContainer, NULL, PROV_RSA_AES, CRYPT_VERIFYCONTEXT);
    if (!result && FUNC3() == NTE_PROV_TYPE_NOT_DEF)
    {
        FUNC7("RSA_AES provider not supported\n");
        return FALSE;
    }
    FUNC6(!result && FUNC3()==NTE_BAD_FLAGS, "%d, %08x\n", result, FUNC3());

    if (!FUNC0(&hProv, szContainer, NULL, PROV_RSA_AES, 0))
    {
        FUNC6(FUNC3()==NTE_BAD_KEYSET, "%08x\n", FUNC3());
        if (FUNC3()!=NTE_BAD_KEYSET) return FALSE;
        result = FUNC0(&hProv, szContainer, NULL, PROV_RSA_AES,
                                     CRYPT_NEWKEYSET);
        FUNC6(result, "%08x\n", FUNC3());
        if (!result) return FALSE;
        result = FUNC2(hProv, AT_KEYEXCHANGE, 0, &hKey);
        FUNC6(result, "%08x\n", FUNC3());
        if (result) FUNC1(hKey);
        result = FUNC2(hProv, AT_SIGNATURE, 0, &hKey);
        FUNC6(result, "%08x\n", FUNC3());
        if (result) FUNC1(hKey);

        /* CALG_AES is not supported, but CALG_AES_128 is */
        result = FUNC2(hProv, CALG_AES, 0, &hKey);
        FUNC6(!result && FUNC3() == NTE_BAD_ALGID, "%d %08x\n", result, FUNC3());
        result = FUNC2(hProv, CALG_AES, 128 << 16, &hKey);
        FUNC6(!result && FUNC3() == NTE_BAD_ALGID, "%d %08x\n", result, FUNC3());
        result = FUNC2(hProv, CALG_AES_128, 0, &hKey);
        FUNC6(result, "%08x\n", FUNC3());
        if (result) FUNC1(hKey);
    }
    return TRUE;
}