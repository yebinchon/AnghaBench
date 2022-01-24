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
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AT_KEYEXCHANGE ; 
 int CRYPT_DECRYPT ; 
 int CRYPT_ENCRYPT ; 
 int CRYPT_EXPORT ; 
 int /*<<< orphan*/  CRYPT_EXPORTABLE ; 
 int CRYPT_MAC ; 
 int CRYPT_READ ; 
 int CRYPT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  KP_PERMISSIONS ; 
 int NTE_BAD_DATA ; 
 int NTE_BAD_FLAGS ; 
 int /*<<< orphan*/  PRIVATEKEYBLOB ; 
 int /*<<< orphan*/  PUBLICKEYBLOB ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  hProv ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int) ; 

__attribute__((used)) static void FUNC10(void)
{
    HCRYPTKEY hKey1, hKey2;
    DWORD dwVal, dwLen;
    BOOL result;

    /* Create keys that are exportable */
    if (!FUNC8(NULL, CRYPT_EXPORTABLE))
        return;

    result = FUNC3(hProv, AT_KEYEXCHANGE, &hKey1);
    FUNC9 (result, "%08x\n", FUNC5());
    if (!result) return;

    dwVal = 0xdeadbeef;
    dwLen = sizeof(DWORD);
    result = FUNC2(hKey1, KP_PERMISSIONS, (BYTE*)&dwVal, &dwLen, 0);
    FUNC9(result, "%08x\n", FUNC5());
    FUNC9(dwVal ==
        (CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_EXPORT|CRYPT_DECRYPT|CRYPT_ENCRYPT) ||
        FUNC6(dwVal == 0xffffffff), /* Win9x/NT4 */
        "expected CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_EXPORT|CRYPT_DECRYPT|CRYPT_ENCRYPT,"
        " got %08x\n", dwVal);

    /* The key exchange key's public key may be exported.. */
    result = FUNC1(hKey1, 0, PUBLICKEYBLOB, 0, NULL, &dwLen);
    FUNC9(result, "%08x\n", FUNC5());
    /* and its private key may be too. */
    result = FUNC1(hKey1, 0, PRIVATEKEYBLOB, 0, NULL, &dwLen);
    FUNC9(result, "%08x\n", FUNC5());
    /* Turning off the key's export permissions is "allowed".. */
    dwVal &= ~CRYPT_EXPORT;
    result = FUNC4(hKey1, KP_PERMISSIONS, (BYTE *)&dwVal, 0);
    FUNC9(result ||
        FUNC6(!result && FUNC5() == NTE_BAD_DATA) || /* W2K */
        FUNC6(!result && FUNC5() == NTE_BAD_FLAGS), /* Win9x/WinME/NT4 */
        "%08x\n", FUNC5());
    /* but it has no effect. */
    dwVal = 0xdeadbeef;
    dwLen = sizeof(DWORD);
    result = FUNC2(hKey1, KP_PERMISSIONS, (BYTE*)&dwVal, &dwLen, 0);
    FUNC9(result, "%08x\n", FUNC5());
    FUNC9(dwVal ==
        (CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_EXPORT|CRYPT_DECRYPT|CRYPT_ENCRYPT) ||
        FUNC6(dwVal == 0xffffffff), /* Win9x/NT4 */
        "expected CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_EXPORT|CRYPT_DECRYPT|CRYPT_ENCRYPT,"
        " got %08x\n", dwVal);
    /* Thus, changing the export flag of the key doesn't affect whether the key
     * may be exported.
     */
    result = FUNC1(hKey1, 0, PRIVATEKEYBLOB, 0, NULL, &dwLen);
    FUNC9(result, "%08x\n", FUNC5());

    result = FUNC3(hProv, AT_KEYEXCHANGE, &hKey2);
    FUNC9 (result, "%08x\n", FUNC5());

    /* A subsequent get of the same key, into a different handle, also doesn't
     * show that the permissions have been changed.
     */
    dwVal = 0xdeadbeef;
    dwLen = sizeof(DWORD);
    result = FUNC2(hKey2, KP_PERMISSIONS, (BYTE*)&dwVal, &dwLen, 0);
    FUNC9(result, "%08x\n", FUNC5());
    FUNC9(dwVal ==
        (CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_EXPORT|CRYPT_DECRYPT|CRYPT_ENCRYPT) ||
        FUNC6(dwVal == 0xffffffff), /* Win9x/NT4 */
        "expected CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_EXPORT|CRYPT_DECRYPT|CRYPT_ENCRYPT,"
        " got %08x\n", dwVal);

    FUNC0(hKey2);
    FUNC0(hKey1);

    FUNC7();
}