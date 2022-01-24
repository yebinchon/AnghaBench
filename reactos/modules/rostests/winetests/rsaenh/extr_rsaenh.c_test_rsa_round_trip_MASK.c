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
typedef  int /*<<< orphan*/  test_string ;
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AT_KEYEXCHANGE ; 
 int /*<<< orphan*/  CALG_RSA_KEYX ; 
 int /*<<< orphan*/  CRYPT_DELETEKEYSET ; 
 int /*<<< orphan*/  CRYPT_EXPORTABLE ; 
 int /*<<< orphan*/  CRYPT_NEWKEYSET ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ NTE_BAD_KEY ; 
 scalar_t__ NTE_PERM ; 
 int /*<<< orphan*/  PRIVATEKEYBLOB ; 
 int /*<<< orphan*/  PROV_RSA_FULL ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,...) ; 
 int FUNC17 (char const*) ; 
 int /*<<< orphan*/  szContainer ; 

__attribute__((used)) static void FUNC18(void)
{
    static const char test_string[] = "Well this is a fine how-do-you-do.";
    HCRYPTPROV prov;
    HCRYPTKEY signKey, keyExchangeKey;
    BOOL result;
    BYTE data[256], *exportedKey;
    DWORD dataLen, keyLen;

    FUNC0(&prov, szContainer, NULL, PROV_RSA_FULL,
     CRYPT_DELETEKEYSET);

    /* Generate a new key... */
    result = FUNC0(&prov, szContainer, NULL, PROV_RSA_FULL,
     CRYPT_NEWKEYSET);
    FUNC16(result, "CryptAcquireContextA failed: %08x\n", FUNC9());
    result = FUNC5(prov, CALG_RSA_KEYX, CRYPT_EXPORTABLE, &signKey);
    FUNC16(result, "CryptGenKey with CALG_RSA_KEYX failed with error %08x\n", FUNC9());
    result = FUNC6(prov, AT_KEYEXCHANGE, &keyExchangeKey);
    FUNC16(result, "CryptGetUserKey failed: %08x\n", FUNC9());
    /* encrypt some data with it... */
    FUNC15(data, test_string, FUNC17(test_string) + 1);
    dataLen = FUNC17(test_string) + 1;
    result = FUNC3(keyExchangeKey, 0, TRUE, 0, data, &dataLen,
                          sizeof(data));
    FUNC16(result || FUNC13(FUNC9() == NTE_BAD_KEY /* Win9x/2000 */) ||
       FUNC13(FUNC9() == NTE_PERM /* NT4 */),
       "CryptEncrypt failed: %08x\n", FUNC9());
    /* export the key... */
    result = FUNC4(keyExchangeKey, 0, PRIVATEKEYBLOB, 0, NULL,
                            &keyLen);
    FUNC16(result, "CryptExportKey failed: %08x\n", FUNC9());
    exportedKey = FUNC11(FUNC10(), 0, keyLen);
    result = FUNC4(keyExchangeKey, 0, PRIVATEKEYBLOB, 0, exportedKey,
                            &keyLen);
    FUNC16(result, "CryptExportKey failed: %08x\n", FUNC9());
    /* destroy the key... */
    FUNC2(keyExchangeKey);
    FUNC2(signKey);
    /* import the key again... */
    result = FUNC7(prov, exportedKey, keyLen, 0, 0, &keyExchangeKey);
    FUNC16(result, "CryptImportKey failed: %08x\n", FUNC9());
    FUNC12(FUNC10(), 0, exportedKey);
    /* and decrypt the data encrypted with the original key with the imported
     * key.
     */
    result = FUNC1(keyExchangeKey, 0, TRUE, 0, data, &dataLen);
    FUNC16(result || FUNC13(FUNC9() == NTE_BAD_KEY /* Win9x/2000 */) ||
       FUNC13(FUNC9() == NTE_PERM /* NT4 */),
       "CryptDecrypt failed: %08x\n", FUNC9());
    if (result)
    {
        FUNC16(dataLen == sizeof(test_string), "unexpected size %d\n", dataLen);
        FUNC16(!FUNC14(data, test_string, sizeof(test_string)), "unexpected value\n");
    }
    FUNC2(keyExchangeKey);
    FUNC8(prov, 0);

    FUNC0(&prov, szContainer, NULL, PROV_RSA_FULL,
     CRYPT_DELETEKEYSET);
}