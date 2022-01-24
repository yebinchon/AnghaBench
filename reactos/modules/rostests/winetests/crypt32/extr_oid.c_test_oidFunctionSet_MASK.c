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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  scalar_t__ HCRYPTOIDFUNCSET ;
typedef  int /*<<< orphan*/  HCRYPTOIDFUNCADDR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  X509_ASN_ENCODING ; 
 int /*<<< orphan*/  X509_CERT ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 

__attribute__((used)) static void FUNC9(void)
{
    HCRYPTOIDFUNCSET set1, set2;
    BOOL ret;
    LPWSTR buf = NULL;
    DWORD size;

    /* This crashes
    set = CryptInitOIDFunctionSet(NULL, 0);
     */

    /* The name doesn't mean much */
    set1 = FUNC2("funky", 0);
    FUNC8(set1 != 0, "CryptInitOIDFunctionSet failed: %08x\n", FUNC3());
    if (set1)
    {
        /* These crash
        ret = CryptGetDefaultOIDDllList(NULL, 0, NULL, NULL);
        ret = CryptGetDefaultOIDDllList(NULL, 0, NULL, &size);
         */
        size = 0;
        ret = FUNC0(set1, 0, NULL, &size);
        FUNC8(ret, "CryptGetDefaultOIDDllList failed: %08x\n", FUNC3());
        if (ret)
        {
            buf = FUNC5(FUNC4(), 0, size * sizeof(WCHAR));
            if (buf)
            {
                ret = FUNC0(set1, 0, buf, &size);
                FUNC8(ret, "CryptGetDefaultOIDDllList failed: %08x\n",
                 FUNC3());
                FUNC8(!*buf, "Expected empty DLL list\n");
                FUNC6(FUNC4(), 0, buf);
            }
        }
    }

    /* MSDN says flags must be 0, but it's not checked */
    set1 = FUNC2("", 1);
    FUNC8(set1 != 0, "CryptInitOIDFunctionSet failed: %08x\n", FUNC3());
    set2 = FUNC2("", 0);
    FUNC8(set2 != 0, "CryptInitOIDFunctionSet failed: %08x\n", FUNC3());
    /* There isn't a free function, so there must be only one set per name to
     * limit leaks.  (I guess the sets are freed when crypt32 is unloaded.)
     */
    FUNC8(set1 == set2, "Expected identical sets\n");
    if (set1)
    {
        /* The empty name function set used here seems to correspond to
         * DEFAULT.
         */
    }

    /* There's no installed function for a built-in encoding. */
    set1 = FUNC2("CryptDllEncodeObject", 0);
    FUNC8(set1 != 0, "CryptInitOIDFunctionSet failed: %08x\n", FUNC3());
    if (set1)
    {
        void *funcAddr;
        HCRYPTOIDFUNCADDR hFuncAddr;

        ret = FUNC1(set1, X509_ASN_ENCODING, X509_CERT, 0,
         &funcAddr, &hFuncAddr);
        FUNC8((!ret && FUNC3() == ERROR_FILE_NOT_FOUND) ||
         FUNC7(ret) /* some Win98 */,
         "Expected ERROR_FILE_NOT_FOUND, got %08x\n", FUNC3());
    }
}