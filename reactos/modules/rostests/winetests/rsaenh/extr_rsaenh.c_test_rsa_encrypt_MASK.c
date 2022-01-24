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
typedef  int /*<<< orphan*/  abData ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int DWORD ;
typedef  char BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AT_KEYEXCHANGE ; 
 int /*<<< orphan*/  AT_SIGNATURE ; 
 int CRYPT_DECRYPT ; 
 int CRYPT_ENCRYPT ; 
 int CRYPT_EXPORT ; 
 int CRYPT_MAC ; 
 int /*<<< orphan*/  CRYPT_OAEP ; 
 int CRYPT_READ ; 
 int CRYPT_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENHANCED_PROV ; 
 int ERROR_MORE_DATA ; 
 int ERROR_NO_TOKEN ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  KP_PERMISSIONS ; 
 int /*<<< orphan*/  KP_SALT ; 
 int NTE_BAD_DATA ; 
 int NTE_BAD_FLAGS ; 
 int NTE_BAD_KEY ; 
 int NTE_BAD_KEY_STATE ; 
 int NTE_BAD_LEN ; 
 int NTE_DOUBLE_ENCRYPT ; 
 int NTE_NOT_FOUND ; 
 int /*<<< orphan*/  PRIVATEKEYBLOB ; 
 int /*<<< orphan*/  PUBLICKEYBLOB ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int TRUE ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  hProv ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int,...) ; 

__attribute__((used)) static void FUNC13(void)
{
    HCRYPTKEY hRSAKey;
    BYTE abData[2048] = "Wine rocks!";
    BOOL result;
    DWORD dwVal, dwLen;
    DWORD err;

    /* It is allowed to use the key exchange key for encryption/decryption */
    result = FUNC5(hProv, AT_KEYEXCHANGE, &hRSAKey);
    FUNC12 (result, "%08x\n", FUNC7());
    if (!result) return;

    dwLen = 12;
    result = FUNC2(hRSAKey, 0, TRUE, 0, NULL, &dwLen, (DWORD)sizeof(abData));
    if(!ENHANCED_PROV && !result && FUNC7() == NTE_BAD_KEY)
    {
        FUNC1(hRSAKey);
        return;
    }
    FUNC12(result, "CryptEncrypt failed: %08x\n", FUNC7());
    FUNC12(dwLen == 128, "Unexpected length %d\n", dwLen);
    /* PKCS1 V1.5 */
    dwLen = 12;
    result = FUNC2(hRSAKey, 0, TRUE, 0, abData, &dwLen, (DWORD)sizeof(abData));
    FUNC12 (result, "%08x\n", FUNC7());
    if (!result) return;

    result = FUNC0(hRSAKey, 0, TRUE, 0, abData, &dwLen);
    FUNC12 (result && dwLen == 12 && !FUNC10(abData, "Wine rocks!", 12), "%08x\n", FUNC7());

    /* OAEP, RFC 8017 PKCS #1 V2.2 */
    /* Test minimal buffer length requirement */
    dwLen = 1;
    FUNC8(0xdeadbeef);
    result = FUNC2(hRSAKey, 0, TRUE, CRYPT_OAEP, abData, &dwLen, 20 * 2 + 2);
    err = FUNC7();
    FUNC12(!result && err == ERROR_MORE_DATA, "%08x\n", err);

    /* Test data length limit */
    dwLen = sizeof(abData) - (20 * 2 + 2) + 1;
    result = FUNC2(hRSAKey, 0, TRUE, CRYPT_OAEP, abData, &dwLen, (DWORD)sizeof(abData));
    err = FUNC7();
    FUNC12(!result && err == NTE_BAD_LEN, "%08x\n", err);

    /* Test malformed data */
    dwLen = 12;
    FUNC8(0xdeadbeef);
    FUNC11(abData, "Wine rocks!", dwLen);
    result = FUNC0(hRSAKey, 0, TRUE, CRYPT_OAEP, abData, &dwLen);
    err = FUNC7();
    /* NTE_DOUBLE_ENCRYPT on xp or 2003 */
    FUNC12(!result && (err == NTE_BAD_DATA || FUNC9(err == NTE_DOUBLE_ENCRYPT)), "%08x\n", err);

    /* Test decrypt with insufficient buffer */
    dwLen = 12;
    FUNC8(0xdeadbeef);
    FUNC11(abData, "Wine rocks!", 12);
    result = FUNC2(hRSAKey, 0, TRUE, CRYPT_OAEP, abData, &dwLen, (DWORD)sizeof(abData));
    FUNC12(result, "%08x\n", FUNC7());
    dwLen = 11;
    FUNC8(0xdeadbeef);
    result = FUNC0(hRSAKey, 0, TRUE, CRYPT_OAEP, abData, &dwLen);
    err = FUNC7();
    /* broken on xp or 2003 */
    FUNC12((!result && dwLen == 11 && err == NTE_BAD_DATA) || FUNC9(result == TRUE && dwLen == 12 && err == ERROR_NO_TOKEN),
       "%08x %d %08x\n", result, dwLen, err);

    /* Test normal encryption and decryption */
    dwLen = 12;
    FUNC11(abData, "Wine rocks!", dwLen);
    result = FUNC2(hRSAKey, 0, TRUE, CRYPT_OAEP, abData, &dwLen, (DWORD)sizeof(abData));
    FUNC12(result, "%08x\n", FUNC7());
    result = FUNC0(hRSAKey, 0, TRUE, CRYPT_OAEP, abData, &dwLen);
    FUNC12(result && dwLen == 12 && !FUNC10(abData, "Wine rocks!", 12), "%08x\n", FUNC7());

    dwVal = 0xdeadbeef;
    dwLen = sizeof(DWORD);
    result = FUNC4(hRSAKey, KP_PERMISSIONS, (BYTE*)&dwVal, &dwLen, 0);
    FUNC12(result, "%08x\n", FUNC7());
    FUNC12(dwVal ==
        (CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_DECRYPT|CRYPT_ENCRYPT) ||
        FUNC9(dwVal == 0xffffffff), /* Win9x/NT4 */
        "expected CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_DECRYPT|CRYPT_ENCRYPT,"
        " got %08x\n", dwVal);

    /* An RSA key doesn't support salt */
    result = FUNC4(hRSAKey, KP_SALT, NULL, &dwLen, 0);
    FUNC12(!result && (FUNC7() == NTE_BAD_KEY || FUNC7() == NTE_NOT_FOUND /* Win7 */),
       "expected NTE_BAD_KEY or NTE_NOT_FOUND, got %08x\n", FUNC7());

    /* The key exchange key's public key may be exported.. */
    result = FUNC3(hRSAKey, 0, PUBLICKEYBLOB, 0, NULL, &dwLen);
    FUNC12(result, "%08x\n", FUNC7());
    /* but its private key may not be. */
    FUNC8(0xdeadbeef);
    result = FUNC3(hRSAKey, 0, PRIVATEKEYBLOB, 0, NULL, &dwLen);
    FUNC12((!result && FUNC7() == NTE_BAD_KEY_STATE) ||
        FUNC9(result), /* Win9x/NT4 */
        "expected NTE_BAD_KEY_STATE, got %08x\n", FUNC7());
    /* Setting the permissions of the key exchange key isn't allowed, either. */
    dwVal |= CRYPT_EXPORT;
    FUNC8(0xdeadbeef);
    result = FUNC6(hRSAKey, KP_PERMISSIONS, (BYTE *)&dwVal, 0);
    FUNC12(!result &&
        (FUNC7() == NTE_BAD_DATA || FUNC7() == NTE_BAD_FLAGS),
        "expected NTE_BAD_DATA or NTE_BAD_FLAGS, got %08x\n", FUNC7());

    FUNC1(hRSAKey);

    /* It is not allowed to use the signature key for encryption/decryption */
    result = FUNC5(hProv, AT_SIGNATURE, &hRSAKey);
    FUNC12 (result, "%08x\n", FUNC7());
    if (!result) return;

    dwVal = 0xdeadbeef;
    dwLen = sizeof(DWORD);
    result = FUNC4(hRSAKey, KP_PERMISSIONS, (BYTE*)&dwVal, &dwLen, 0);
    FUNC12(result, "%08x\n", FUNC7());
    FUNC12(dwVal ==
        (CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_DECRYPT|CRYPT_ENCRYPT) ||
        FUNC9(dwVal == 0xffffffff), /* Win9x/NT4 */
        "expected CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_DECRYPT|CRYPT_ENCRYPT,"
        " got %08x\n", dwVal);

    /* The signature key's public key may also be exported.. */
    result = FUNC3(hRSAKey, 0, PUBLICKEYBLOB, 0, NULL, &dwLen);
    FUNC12(result, "%08x\n", FUNC7());
    /* but its private key may not be. */
    FUNC8(0xdeadbeef);
    result = FUNC3(hRSAKey, 0, PRIVATEKEYBLOB, 0, NULL, &dwLen);
    FUNC12((!result && FUNC7() == NTE_BAD_KEY_STATE) ||
        FUNC9(result), /* Win9x/NT4 */
        "expected NTE_BAD_KEY_STATE, got %08x\n", FUNC7());
    /* Setting the permissions of the signature key isn't allowed, either. */
    dwVal |= CRYPT_EXPORT;
    FUNC8(0xdeadbeef);
    result = FUNC6(hRSAKey, KP_PERMISSIONS, (BYTE *)&dwVal, 0);
    FUNC12(!result &&
        (FUNC7() == NTE_BAD_DATA || FUNC7() == NTE_BAD_FLAGS),
        "expected NTE_BAD_DATA or NTE_BAD_FLAGS, got %08x\n", FUNC7());

    dwLen = 12;
    result = FUNC2(hRSAKey, 0, TRUE, 0, abData, &dwLen, (DWORD)sizeof(abData));
    FUNC12 (!result && FUNC7() == NTE_BAD_KEY, "%08x\n", FUNC7());

    FUNC1(hRSAKey);
}