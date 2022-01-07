
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int AT_KEYEXCHANGE ;
 int CRYPT_DECRYPT ;
 int CRYPT_ENCRYPT ;
 int CRYPT_EXPORT ;
 int CRYPT_EXPORTABLE ;
 int CRYPT_MAC ;
 int CRYPT_READ ;
 int CRYPT_WRITE ;
 int CryptDestroyKey (int ) ;
 int CryptExportKey (int ,int ,int ,int ,int *,int*) ;
 int CryptGetKeyParam (int ,int ,int *,int*,int ) ;
 int CryptGetUserKey (int ,int ,int *) ;
 int CryptSetKeyParam (int ,int ,int *,int ) ;
 int GetLastError () ;
 int KP_PERMISSIONS ;
 int NTE_BAD_DATA ;
 int NTE_BAD_FLAGS ;
 int PRIVATEKEYBLOB ;
 int PUBLICKEYBLOB ;
 scalar_t__ broken (int) ;
 int clean_up_base_environment () ;
 int hProv ;
 int init_base_environment (int *,int ) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_key_permissions(void)
{
    HCRYPTKEY hKey1, hKey2;
    DWORD dwVal, dwLen;
    BOOL result;


    if (!init_base_environment(((void*)0), CRYPT_EXPORTABLE))
        return;

    result = CryptGetUserKey(hProv, AT_KEYEXCHANGE, &hKey1);
    ok (result, "%08x\n", GetLastError());
    if (!result) return;

    dwVal = 0xdeadbeef;
    dwLen = sizeof(DWORD);
    result = CryptGetKeyParam(hKey1, KP_PERMISSIONS, (BYTE*)&dwVal, &dwLen, 0);
    ok(result, "%08x\n", GetLastError());
    ok(dwVal ==
        (CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_EXPORT|CRYPT_DECRYPT|CRYPT_ENCRYPT) ||
        broken(dwVal == 0xffffffff),
        "expected CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_EXPORT|CRYPT_DECRYPT|CRYPT_ENCRYPT,"
        " got %08x\n", dwVal);


    result = CryptExportKey(hKey1, 0, PUBLICKEYBLOB, 0, ((void*)0), &dwLen);
    ok(result, "%08x\n", GetLastError());

    result = CryptExportKey(hKey1, 0, PRIVATEKEYBLOB, 0, ((void*)0), &dwLen);
    ok(result, "%08x\n", GetLastError());

    dwVal &= ~CRYPT_EXPORT;
    result = CryptSetKeyParam(hKey1, KP_PERMISSIONS, (BYTE *)&dwVal, 0);
    ok(result ||
        broken(!result && GetLastError() == NTE_BAD_DATA) ||
        broken(!result && GetLastError() == NTE_BAD_FLAGS),
        "%08x\n", GetLastError());

    dwVal = 0xdeadbeef;
    dwLen = sizeof(DWORD);
    result = CryptGetKeyParam(hKey1, KP_PERMISSIONS, (BYTE*)&dwVal, &dwLen, 0);
    ok(result, "%08x\n", GetLastError());
    ok(dwVal ==
        (CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_EXPORT|CRYPT_DECRYPT|CRYPT_ENCRYPT) ||
        broken(dwVal == 0xffffffff),
        "expected CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_EXPORT|CRYPT_DECRYPT|CRYPT_ENCRYPT,"
        " got %08x\n", dwVal);



    result = CryptExportKey(hKey1, 0, PRIVATEKEYBLOB, 0, ((void*)0), &dwLen);
    ok(result, "%08x\n", GetLastError());

    result = CryptGetUserKey(hProv, AT_KEYEXCHANGE, &hKey2);
    ok (result, "%08x\n", GetLastError());




    dwVal = 0xdeadbeef;
    dwLen = sizeof(DWORD);
    result = CryptGetKeyParam(hKey2, KP_PERMISSIONS, (BYTE*)&dwVal, &dwLen, 0);
    ok(result, "%08x\n", GetLastError());
    ok(dwVal ==
        (CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_EXPORT|CRYPT_DECRYPT|CRYPT_ENCRYPT) ||
        broken(dwVal == 0xffffffff),
        "expected CRYPT_MAC|CRYPT_WRITE|CRYPT_READ|CRYPT_EXPORT|CRYPT_DECRYPT|CRYPT_ENCRYPT,"
        " got %08x\n", dwVal);

    CryptDestroyKey(hKey2);
    CryptDestroyKey(hKey1);

    clean_up_base_environment();
}
