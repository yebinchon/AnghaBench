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
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AT_KEYEXCHANGE ; 
 int /*<<< orphan*/  AT_SIGNATURE ; 
 int /*<<< orphan*/  CRYPT_NEWKEYSET ; 
 int /*<<< orphan*/  CRYPT_VERIFYCONTEXT ; 
 int FUNC0 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  NTE_BAD_FLAGS ; 
 int /*<<< orphan*/  NTE_BAD_KEYSET ; 
 int /*<<< orphan*/  NTE_KEYSET_NOT_DEF ; 
 int /*<<< orphan*/  NTE_TEMPORARY_PROFILE ; 
 int /*<<< orphan*/  PROV_RSA_FULL ; 
 int TRUE ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ hProv ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int,...) ; 
 void* pCryptDuplicateHash ; 
 int /*<<< orphan*/  szContainer ; 
 char const* szProvider ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static BOOL FUNC9(const char *provider, DWORD dwKeyFlags)
{
    HCRYPTKEY hKey;
    BOOL result;

    if (provider) szProvider = provider;
        
    pCryptDuplicateHash = (void *)FUNC5(FUNC4("advapi32.dll"), "CryptDuplicateHash");
        
    hProv = (HCRYPTPROV)INVALID_HANDLE_VALUE;

    result = FUNC0(&hProv, szContainer, szProvider, PROV_RSA_FULL, CRYPT_VERIFYCONTEXT);
    FUNC7(!result && (FUNC3()==NTE_BAD_FLAGS ||
       FUNC6(FUNC3() == NTE_KEYSET_NOT_DEF /* Win9x/NT4 */)),
       "%d, %08x\n", result, FUNC3());
    
    if (!FUNC0(&hProv, szContainer, szProvider, PROV_RSA_FULL, 0))
    {
        FUNC7(FUNC3()==NTE_BAD_KEYSET ||
           FUNC6(FUNC3() == NTE_TEMPORARY_PROFILE /* some Win7 setups */) ||
           FUNC6(FUNC3() == NTE_KEYSET_NOT_DEF /* Win9x/NT4 */),
           "%08x\n", FUNC3());
        if (FUNC3()!=NTE_BAD_KEYSET)
        {
            FUNC8("RSA full provider not available\n");
            return FALSE;
        }
        result = FUNC0(&hProv, szContainer, szProvider, PROV_RSA_FULL,
                                     CRYPT_NEWKEYSET);
        FUNC7(result, "%08x\n", FUNC3());
        if (!result)
        {
            FUNC8("Couldn't create crypto provider\n");
            return FALSE;
        }
        result = FUNC2(hProv, AT_KEYEXCHANGE, dwKeyFlags, &hKey);
        FUNC7(result, "%08x\n", FUNC3());
        if (result) FUNC1(hKey);
        result = FUNC2(hProv, AT_SIGNATURE, dwKeyFlags, &hKey);
        FUNC7(result, "%08x\n", FUNC3());
        if (result) FUNC1(hKey);
    }
    return TRUE;
}