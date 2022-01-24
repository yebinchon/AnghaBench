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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int PKCS_7_ASN_ENCODING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int X509_ASN_ENCODING ; 
 int /*<<< orphan*/ * bogusDll ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    BOOL ret;

    /* oddly, this succeeds under WinXP; the function name key is merely
     * omitted.  This may be a side effect of the registry code, I don't know.
     * I don't check it because I doubt anyone would depend on it.
    ret = CryptRegisterOIDFunction(X509_ASN_ENCODING, NULL,
     "1.2.3.4.5.6.7.8.9.10", bogusDll, NULL);
     */
    /* On windows XP, GetLastError is incorrectly being set with an HRESULT,
     * E_INVALIDARG
     */
    ret = FUNC0(X509_ASN_ENCODING, "foo", NULL, bogusDll,
     NULL);
    FUNC5(!ret && FUNC2() == E_INVALIDARG,
     "Expected E_INVALIDARG: %d\n", FUNC2());
    /* This has no effect, but "succeeds" on XP */
    ret = FUNC0(X509_ASN_ENCODING, "foo",
     "1.2.3.4.5.6.7.8.9.10", NULL, NULL);
    FUNC5(ret, "Expected pseudo-success, got %d\n", FUNC2());
    FUNC4(0xdeadbeef);
    ret = FUNC0(X509_ASN_ENCODING, "CryptDllEncodeObject",
     "1.2.3.4.5.6.7.8.9.10", bogusDll, NULL);
    if (!ret && FUNC2() == ERROR_ACCESS_DENIED)
    {
        FUNC6("Need admin rights\n");
        return;
    }
    FUNC5(ret, "CryptRegisterOIDFunction failed: %d\n", FUNC2());
    ret = FUNC1(X509_ASN_ENCODING, "CryptDllEncodeObject",
     "1.2.3.4.5.6.7.8.9.10");
    FUNC5(ret, "CryptUnregisterOIDFunction failed: %d\n", FUNC2());
    ret = FUNC0(X509_ASN_ENCODING, "bogus",
     "1.2.3.4.5.6.7.8.9.10", bogusDll, NULL);
    FUNC5(ret, "CryptRegisterOIDFunction failed: %d\n", FUNC2());
    ret = FUNC1(X509_ASN_ENCODING, "bogus",
     "1.2.3.4.5.6.7.8.9.10");
    FUNC5(ret, "CryptUnregisterOIDFunction failed: %d\n", FUNC2());
    /* Unwanted Cryptography\OID\EncodingType 1\bogus\ will still be there */
    FUNC5(!FUNC3(HKEY_LOCAL_MACHINE,
     "SOFTWARE\\Microsoft\\Cryptography\\OID\\EncodingType 1\\bogus"),
     "Could not delete bogus key\n");
    /* Shouldn't have effect but registry keys are created */
    ret = FUNC0(PKCS_7_ASN_ENCODING, "CryptDllEncodeObject",
     "1.2.3.4.5.6.7.8.9.10", bogusDll, NULL);
    FUNC5(ret, "CryptRegisterOIDFunction failed: %d\n", FUNC2());
    ret = FUNC1(PKCS_7_ASN_ENCODING, "CryptDllEncodeObject",
     "1.2.3.4.5.6.7.8.9.10");
    FUNC5(ret, "CryptUnregisterOIDFunction failed: %d\n", FUNC2());
    /* Check with bogus encoding type. Registry keys are still created */
    ret = FUNC0(0, "CryptDllEncodeObject",
     "1.2.3.4.5.6.7.8.9.10", bogusDll, NULL);
    FUNC5(ret, "CryptRegisterOIDFunction failed: %d\n", FUNC2());
    ret = FUNC1(0, "CryptDllEncodeObject",
     "1.2.3.4.5.6.7.8.9.10");
    FUNC5(ret, "CryptUnregisterOIDFunction failed: %d\n", FUNC2());
    /* Unwanted Cryptography\OID\EncodingType 0\CryptDllEncodeObject\
     * will still be there
     */
    FUNC5(!FUNC3(HKEY_LOCAL_MACHINE,
     "SOFTWARE\\Microsoft\\Cryptography\\OID\\EncodingType 0\\CryptDllEncodeObject"),
     "Could not delete CryptDllEncodeObject key\n");
    /* This is written with value 3 verbatim.  Thus, the encoding type isn't
     * (for now) treated as a mask. Registry keys are created.
     */
    ret = FUNC0(3, "CryptDllEncodeObject",
     "1.2.3.4.5.6.7.8.9.10", bogusDll, NULL);
    FUNC5(ret, "CryptRegisterOIDFunction failed: %d\n", FUNC2());
    ret = FUNC1(3, "CryptDllEncodeObject",
     "1.2.3.4.5.6.7.8.9.10");
    FUNC5(ret, "CryptUnregisterOIDFunction failed: %d\n", FUNC2());
    /* Unwanted Cryptography\OID\EncodingType 3\CryptDllEncodeObject
     * will still be there.
     */
    FUNC5(!FUNC3(HKEY_LOCAL_MACHINE,
     "SOFTWARE\\Microsoft\\Cryptography\\OID\\EncodingType 3\\CryptDllEncodeObject"),
     "Could not delete CryptDllEncodeObject key\n");
    FUNC5(!FUNC3(HKEY_LOCAL_MACHINE,
     "SOFTWARE\\Microsoft\\Cryptography\\OID\\EncodingType 3"),
     "Could not delete 'EncodingType 3' key\n");
}