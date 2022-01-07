
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abData ;
typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef char BYTE ;
typedef int BOOL ;


 int AT_KEYEXCHANGE ;
 int AT_SIGNATURE ;
 int CRYPT_DECRYPT ;
 int CRYPT_ENCRYPT ;
 int CRYPT_EXPORT ;
 int CRYPT_MAC ;
 int CRYPT_OAEP ;
 int CRYPT_READ ;
 int CRYPT_WRITE ;
 int CryptDecrypt (int ,int ,int,int ,char*,int*) ;
 int CryptDestroyKey (int ) ;
 int CryptEncrypt (int ,int ,int,int ,char*,int*,int) ;
 int CryptExportKey (int ,int ,int ,int ,int *,int*) ;
 int CryptGetKeyParam (int ,int ,char*,int*,int ) ;
 int CryptGetUserKey (int ,int ,int *) ;
 int CryptSetKeyParam (int ,int ,char*,int ) ;
 int ENHANCED_PROV ;
 int ERROR_MORE_DATA ;
 int ERROR_NO_TOKEN ;
 int GetLastError () ;
 int KP_PERMISSIONS ;
 int KP_SALT ;
 int NTE_BAD_DATA ;
 int NTE_BAD_FLAGS ;
 int NTE_BAD_KEY ;
 int NTE_BAD_KEY_STATE ;
 int NTE_BAD_LEN ;
 int NTE_DOUBLE_ENCRYPT ;
 int NTE_NOT_FOUND ;
 int PRIVATEKEYBLOB ;
 int PUBLICKEYBLOB ;
 int SetLastError (int) ;
 int TRUE ;
 scalar_t__ broken (int) ;
 int hProv ;
 int memcmp (char*,char*,int) ;
 int memcpy (char*,char*,int) ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void test_rsa_encrypt(void)
{
    HCRYPTKEY hRSAKey;
    BYTE abData[2048] = "Wine rocks!";
    BOOL result;
    DWORD dwVal, dwLen;
    DWORD err;


    result = CryptGetUserKey(hProv, AT_KEYEXCHANGE, &hRSAKey);
    ok (result, "%08x\n", GetLastError());
    if (!result) return;

    dwLen = 12;
    result = CryptEncrypt(hRSAKey, 0, TRUE, 0, ((void*)0), &dwLen, (DWORD)sizeof(abData));
    if(!ENHANCED_PROV && !result && GetLastError() == NTE_BAD_KEY)
    {
        CryptDestroyKey(hRSAKey);
        return;
    }
    ok(result, "CryptEncrypt failed: %08x\n", GetLastError());
    ok(dwLen == 128, "Unexpected length %d\n", dwLen);

    dwLen = 12;
    result = CryptEncrypt(hRSAKey, 0, TRUE, 0, abData, &dwLen, (DWORD)sizeof(abData));
    ok (result, "%08x\n", GetLastError());
    if (!result) return;

    result = CryptDecrypt(hRSAKey, 0, TRUE, 0, abData, &dwLen);
    ok (result && dwLen == 12 && !memcmp(abData, "Wine rocks!", 12), "%08x\n", GetLastError());



    dwLen = 1;
    SetLastError(0xdeadbeef);
    result = CryptEncrypt(hRSAKey, 0, TRUE, CRYPT_OAEP, abData, &dwLen, 20 * 2 + 2);
    err = GetLastError();
    ok(!result && err == ERROR_MORE_DATA, "%08x\n", err);


    dwLen = sizeof(abData) - (20 * 2 + 2) + 1;
    result = CryptEncrypt(hRSAKey, 0, TRUE, CRYPT_OAEP, abData, &dwLen, (DWORD)sizeof(abData));
    err = GetLastError();
    ok(!result && err == NTE_BAD_LEN, "%08x\n", err);


    dwLen = 12;
    SetLastError(0xdeadbeef);
    memcpy(abData, "Wine rocks!", dwLen);
    result = CryptDecrypt(hRSAKey, 0, TRUE, CRYPT_OAEP, abData, &dwLen);
    err = GetLastError();

    ok(!result && (err == NTE_BAD_DATA || broken(err == NTE_DOUBLE_ENCRYPT)), "%08x\n", err);


    dwLen = 12;
    SetLastError(0xdeadbeef);
    memcpy(abData, "Wine rocks!", 12);
    result = CryptEncrypt(hRSAKey, 0, TRUE, CRYPT_OAEP, abData, &dwLen, (DWORD)sizeof(abData));
    ok(result, "%08x\n", GetLastError());
    dwLen = 11;
    SetLastError(0xdeadbeef);
    result = CryptDecrypt(hRSAKey, 0, TRUE, CRYPT_OAEP, abData, &dwLen);
    err = GetLastError();

    ok((!result && dwLen == 11 && err == NTE_BAD_DATA) || broken(result == TRUE && dwLen == 12 && err == ERROR_NO_TOKEN),
       "%08x %d %08x\n", result, dwLen, err);


    dwLen = 12;
    memcpy(abData, "Wine rocks!", dwLen);
    result = CryptEncrypt(hRSAKey, 0, TRUE, CRYPT_OAEP, abData, &dwLen, (DWORD)sizeof(abData));
    ok(result, "%08x\n", GetLastError());
    result = CryptDecrypt(hRSAKey, 0, TRUE, CRYPT_OAEP, abData, &dwLen);
    ok(result && dwLen == 12 && !memcmp(abData, "Wine rocks!", 12), "%08x\n", GetLastError());

    dwVal = 0xdeadbeef;
    dwLen = sizeof(DWORD);
    result = CryptGetKeyParam(hRSAKey, KP_PERMISSIONS, (BYTE*)&dwVal, &dwLen, 0);
    ok(result, "%08x\n", GetLastError());
    ok(dwVal ==
        (CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_DECRYPT|CRYPT_ENCRYPT) ||
        broken(dwVal == 0xffffffff),
        "expected CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_DECRYPT|CRYPT_ENCRYPT,"
        " got %08x\n", dwVal);


    result = CryptGetKeyParam(hRSAKey, KP_SALT, ((void*)0), &dwLen, 0);
    ok(!result && (GetLastError() == NTE_BAD_KEY || GetLastError() == NTE_NOT_FOUND ),
       "expected NTE_BAD_KEY or NTE_NOT_FOUND, got %08x\n", GetLastError());


    result = CryptExportKey(hRSAKey, 0, PUBLICKEYBLOB, 0, ((void*)0), &dwLen);
    ok(result, "%08x\n", GetLastError());

    SetLastError(0xdeadbeef);
    result = CryptExportKey(hRSAKey, 0, PRIVATEKEYBLOB, 0, ((void*)0), &dwLen);
    ok((!result && GetLastError() == NTE_BAD_KEY_STATE) ||
        broken(result),
        "expected NTE_BAD_KEY_STATE, got %08x\n", GetLastError());

    dwVal |= CRYPT_EXPORT;
    SetLastError(0xdeadbeef);
    result = CryptSetKeyParam(hRSAKey, KP_PERMISSIONS, (BYTE *)&dwVal, 0);
    ok(!result &&
        (GetLastError() == NTE_BAD_DATA || GetLastError() == NTE_BAD_FLAGS),
        "expected NTE_BAD_DATA or NTE_BAD_FLAGS, got %08x\n", GetLastError());

    CryptDestroyKey(hRSAKey);


    result = CryptGetUserKey(hProv, AT_SIGNATURE, &hRSAKey);
    ok (result, "%08x\n", GetLastError());
    if (!result) return;

    dwVal = 0xdeadbeef;
    dwLen = sizeof(DWORD);
    result = CryptGetKeyParam(hRSAKey, KP_PERMISSIONS, (BYTE*)&dwVal, &dwLen, 0);
    ok(result, "%08x\n", GetLastError());
    ok(dwVal ==
        (CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_DECRYPT|CRYPT_ENCRYPT) ||
        broken(dwVal == 0xffffffff),
        "expected CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_DECRYPT|CRYPT_ENCRYPT,"
        " got %08x\n", dwVal);


    result = CryptExportKey(hRSAKey, 0, PUBLICKEYBLOB, 0, ((void*)0), &dwLen);
    ok(result, "%08x\n", GetLastError());

    SetLastError(0xdeadbeef);
    result = CryptExportKey(hRSAKey, 0, PRIVATEKEYBLOB, 0, ((void*)0), &dwLen);
    ok((!result && GetLastError() == NTE_BAD_KEY_STATE) ||
        broken(result),
        "expected NTE_BAD_KEY_STATE, got %08x\n", GetLastError());

    dwVal |= CRYPT_EXPORT;
    SetLastError(0xdeadbeef);
    result = CryptSetKeyParam(hRSAKey, KP_PERMISSIONS, (BYTE *)&dwVal, 0);
    ok(!result &&
        (GetLastError() == NTE_BAD_DATA || GetLastError() == NTE_BAD_FLAGS),
        "expected NTE_BAD_DATA or NTE_BAD_FLAGS, got %08x\n", GetLastError());

    dwLen = 12;
    result = CryptEncrypt(hRSAKey, 0, TRUE, 0, abData, &dwLen, (DWORD)sizeof(abData));
    ok (!result && GetLastError() == NTE_BAD_KEY, "%08x\n", GetLastError());

    CryptDestroyKey(hRSAKey);
}
