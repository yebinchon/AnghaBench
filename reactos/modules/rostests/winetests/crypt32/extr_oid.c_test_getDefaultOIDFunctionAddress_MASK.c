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
typedef  scalar_t__ HCRYPTOIDFUNCSET ;
typedef  scalar_t__ HCRYPTOIDFUNCADDR ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**,scalar_t__*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  X509_ASN_ENCODING ; 
 int /*<<< orphan*/  bogusDll ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    BOOL ret;
    HCRYPTOIDFUNCSET set;
    void *funcAddr;
    HCRYPTOIDFUNCADDR hFuncAddr;

    /* Crash
    ret = CryptGetDefaultOIDFunctionAddress(0, 0, NULL, 0, NULL, NULL);
    ret = CryptGetDefaultOIDFunctionAddress(0, 0, NULL, 0, &funcAddr, NULL);
    ret = CryptGetDefaultOIDFunctionAddress(0, 0, NULL, 0, NULL, &hFuncAddr);
    ret = CryptGetDefaultOIDFunctionAddress(0, 0, NULL, 0, &funcAddr,
     &hFuncAddr);
     */
    set = FUNC1("CertDllOpenStoreProv", 0);
    FUNC6(set != 0, "CryptInitOIDFunctionSet failed: %d\n", FUNC4());
    /* This crashes if hFuncAddr is not 0 to begin with */
    hFuncAddr = 0;
    ret = FUNC0(set, 0, NULL, 0, &funcAddr,
     &hFuncAddr);
    FUNC6(!ret && FUNC4() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %d\n", FUNC4());
    /* This fails with the normal encoding too, so built-in functions aren't
     * returned.
     */
    ret = FUNC0(set, X509_ASN_ENCODING, NULL, 0,
     &funcAddr, &hFuncAddr);
    FUNC6(!ret && FUNC4() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %d\n", FUNC4());

    /* Even with a registered dll, this fails (since the dll doesn't exist) */
    FUNC5(0xdeadbeef);
    ret = FUNC2(0, "CertDllOpenStoreProv", 0,
     bogusDll);
    if (!ret && FUNC4() == ERROR_ACCESS_DENIED)
        FUNC7("Need admin rights\n");
    else
        FUNC6(ret, "CryptRegisterDefaultOIDFunction failed: %08x\n", FUNC4());
    ret = FUNC0(set, 0, NULL, 0, &funcAddr,
     &hFuncAddr);
    FUNC6(!ret && FUNC4() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %d\n", FUNC4());
    FUNC3(0, "CertDllOpenStoreProv", bogusDll);
}