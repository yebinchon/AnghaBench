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
typedef  scalar_t__ LSTATUS ;
typedef  char* LPSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  char CHAR ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ ERROR_FILE_EXISTS ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int MAX_PATH ; 
 scalar_t__ REG_MULTI_SZ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  X509_ASN_ENCODING ; 
 int /*<<< orphan*/ * bogus2Dll ; 
 int /*<<< orphan*/ * bogusDll ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC13(void)
{
    static const char fmt[] =
     "Software\\Microsoft\\Cryptography\\OID\\EncodingType %d\\%s\\DEFAULT";
    static const char func[] = "CertDllOpenStoreProv";
    char buf[MAX_PATH];
    BOOL ret;
    LSTATUS rc;
    HKEY key;

    ret = FUNC1(0, NULL, 0, NULL);
    FUNC10(!ret && FUNC3() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %08x\n", FUNC3());
    /* This succeeds on WinXP, although the bogus entry is unusable.
    ret = CryptRegisterDefaultOIDFunction(0, NULL, 0, bogusDll);
     */
    /* Register one at index 0 */
    FUNC7(0xdeadbeef);
    ret = FUNC1(0, "CertDllOpenStoreProv", 0,
     bogusDll);
    if (!ret && FUNC3() == ERROR_ACCESS_DENIED)
    {
        FUNC11("Need admin rights\n");
        return;
    }
    FUNC10(ret, "CryptRegisterDefaultOIDFunction failed: %08x\n", FUNC3());
    /* Reregistering should fail */
    ret = FUNC1(0, "CertDllOpenStoreProv", 0,
     bogusDll);
    FUNC10(!ret && FUNC3() == ERROR_FILE_EXISTS,
     "Expected ERROR_FILE_EXISTS, got %08x\n", FUNC3());
    /* Registering the same one at index 1 should also fail */
    ret = FUNC1(0, "CertDllOpenStoreProv", 1,
     bogusDll);
    FUNC10(!ret && FUNC3() == ERROR_FILE_EXISTS,
     "Expected ERROR_FILE_EXISTS, got %08x\n", FUNC3());
    /* Registering a different one at index 1 succeeds */
    ret = FUNC1(0, "CertDllOpenStoreProv", 1,
     bogus2Dll);
    FUNC10(ret, "CryptRegisterDefaultOIDFunction failed: %08x\n", FUNC3());
    FUNC12(buf, fmt, 0, func);
    rc = FUNC5(HKEY_LOCAL_MACHINE, buf, &key);
    FUNC10(rc == 0, "Expected key to exist, RegOpenKeyA failed: %d\n", rc);
    if (rc == 0)
    {
        static const CHAR dllA[] = "Dll";
        static const CHAR bogusDll_A[] = "bogus.dll";
        static const CHAR bogus2Dll_A[] = "bogus2.dll";
        CHAR dllBuf[MAX_PATH];
        DWORD type, size;
        LPSTR ptr;

        size = FUNC0(dllBuf);
        rc = FUNC6(key, dllA, NULL, &type, (LPBYTE)dllBuf, &size);
        FUNC10(rc == 0,
         "Expected Dll value to exist, RegQueryValueExA failed: %d\n", rc);
        FUNC10(type == REG_MULTI_SZ, "Expected type REG_MULTI_SZ, got %d\n", type);
        /* bogusDll was registered first, so that should be first */
        ptr = dllBuf;
        FUNC10(!FUNC8(ptr, bogusDll_A), "Unexpected dll\n");
        ptr += FUNC9(ptr) + 1;
        FUNC10(!FUNC8(ptr, bogus2Dll_A), "Unexpected dll\n");
        FUNC4(key);
    }
    /* Unregister both of them */
    ret = FUNC2(0, "CertDllOpenStoreProv",
     bogusDll);
    FUNC10(ret, "CryptUnregisterDefaultOIDFunction failed: %08x\n",
     FUNC3());
    ret = FUNC2(0, "CertDllOpenStoreProv",
     bogus2Dll);
    FUNC10(ret, "CryptUnregisterDefaultOIDFunction failed: %08x\n",
     FUNC3());
    /* Now that they're both unregistered, unregistering should fail */
    ret = FUNC2(0, "CertDllOpenStoreProv",
     bogusDll);
    FUNC10(!ret && FUNC3() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %d\n", FUNC3());

    /* Repeat a few tests on the normal encoding type */
    ret = FUNC1(X509_ASN_ENCODING,
     "CertDllOpenStoreProv", 0, bogusDll);
    FUNC10(ret, "CryptRegisterDefaultOIDFunction failed\n");
    ret = FUNC2(X509_ASN_ENCODING,
     "CertDllOpenStoreProv", bogusDll);
    FUNC10(ret, "CryptUnregisterDefaultOIDFunction failed\n");
    ret = FUNC2(X509_ASN_ENCODING,
     "CertDllOpenStoreProv", bogusDll);
    FUNC10(!ret && FUNC3() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", FUNC3());
}