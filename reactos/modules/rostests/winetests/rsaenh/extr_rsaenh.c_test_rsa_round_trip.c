
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int test_string ;
typedef int data ;
typedef int HCRYPTPROV ;
typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int AT_KEYEXCHANGE ;
 int CALG_RSA_KEYX ;
 int CRYPT_DELETEKEYSET ;
 int CRYPT_EXPORTABLE ;
 int CRYPT_NEWKEYSET ;
 int CryptAcquireContextA (int *,int ,int *,int ,int ) ;
 int CryptDecrypt (int ,int ,int ,int ,int *,int*) ;
 int CryptDestroyKey (int ) ;
 int CryptEncrypt (int ,int ,int ,int ,int *,int*,int) ;
 int CryptExportKey (int ,int ,int ,int ,int *,int*) ;
 int CryptGenKey (int ,int ,int ,int *) ;
 int CryptGetUserKey (int ,int ,int *) ;
 int CryptImportKey (int ,int *,int,int ,int ,int *) ;
 int CryptReleaseContext (int ,int ) ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ NTE_BAD_KEY ;
 scalar_t__ NTE_PERM ;
 int PRIVATEKEYBLOB ;
 int PROV_RSA_FULL ;
 int TRUE ;
 scalar_t__ broken (int) ;
 int memcmp (int *,char const*,int) ;
 int memcpy (int *,char const*,int) ;
 int ok (int,char*,...) ;
 int strlen (char const*) ;
 int szContainer ;

__attribute__((used)) static void test_rsa_round_trip(void)
{
    static const char test_string[] = "Well this is a fine how-do-you-do.";
    HCRYPTPROV prov;
    HCRYPTKEY signKey, keyExchangeKey;
    BOOL result;
    BYTE data[256], *exportedKey;
    DWORD dataLen, keyLen;

    CryptAcquireContextA(&prov, szContainer, ((void*)0), PROV_RSA_FULL,
     CRYPT_DELETEKEYSET);


    result = CryptAcquireContextA(&prov, szContainer, ((void*)0), PROV_RSA_FULL,
     CRYPT_NEWKEYSET);
    ok(result, "CryptAcquireContextA failed: %08x\n", GetLastError());
    result = CryptGenKey(prov, CALG_RSA_KEYX, CRYPT_EXPORTABLE, &signKey);
    ok(result, "CryptGenKey with CALG_RSA_KEYX failed with error %08x\n", GetLastError());
    result = CryptGetUserKey(prov, AT_KEYEXCHANGE, &keyExchangeKey);
    ok(result, "CryptGetUserKey failed: %08x\n", GetLastError());

    memcpy(data, test_string, strlen(test_string) + 1);
    dataLen = strlen(test_string) + 1;
    result = CryptEncrypt(keyExchangeKey, 0, TRUE, 0, data, &dataLen,
                          sizeof(data));
    ok(result || broken(GetLastError() == NTE_BAD_KEY ) ||
       broken(GetLastError() == NTE_PERM ),
       "CryptEncrypt failed: %08x\n", GetLastError());

    result = CryptExportKey(keyExchangeKey, 0, PRIVATEKEYBLOB, 0, ((void*)0),
                            &keyLen);
    ok(result, "CryptExportKey failed: %08x\n", GetLastError());
    exportedKey = HeapAlloc(GetProcessHeap(), 0, keyLen);
    result = CryptExportKey(keyExchangeKey, 0, PRIVATEKEYBLOB, 0, exportedKey,
                            &keyLen);
    ok(result, "CryptExportKey failed: %08x\n", GetLastError());

    CryptDestroyKey(keyExchangeKey);
    CryptDestroyKey(signKey);

    result = CryptImportKey(prov, exportedKey, keyLen, 0, 0, &keyExchangeKey);
    ok(result, "CryptImportKey failed: %08x\n", GetLastError());
    HeapFree(GetProcessHeap(), 0, exportedKey);



    result = CryptDecrypt(keyExchangeKey, 0, TRUE, 0, data, &dataLen);
    ok(result || broken(GetLastError() == NTE_BAD_KEY ) ||
       broken(GetLastError() == NTE_PERM ),
       "CryptDecrypt failed: %08x\n", GetLastError());
    if (result)
    {
        ok(dataLen == sizeof(test_string), "unexpected size %d\n", dataLen);
        ok(!memcmp(data, test_string, sizeof(test_string)), "unexpected value\n");
    }
    CryptDestroyKey(keyExchangeKey);
    CryptReleaseContext(prov, 0);

    CryptAcquireContextA(&prov, szContainer, ((void*)0), PROV_RSA_FULL,
     CRYPT_DELETEKEYSET);
}
