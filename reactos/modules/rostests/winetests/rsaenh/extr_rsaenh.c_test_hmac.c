
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hmac ;
typedef int abData ;
struct TYPE_2__ {int member_4; int * member_3; int member_2; int * member_1; int member_0; } ;
typedef TYPE_1__ HMAC_INFO ;
typedef int HCRYPTKEY ;
typedef int HCRYPTHASH ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int ARRAY_SIZE (int*) ;
 int CALG_HMAC ;
 int CALG_MD5 ;
 int CALG_RC2 ;
 int CryptCreateHash (int ,int ,int ,int ,int *) ;
 int CryptDestroyHash (int ) ;
 int CryptDestroyKey (int ) ;
 int CryptGetHashParam (int ,int ,int*,int*,int ) ;
 int CryptHashData (int ,int*,int,int ) ;
 int CryptSetHashParam (int ,int ,int*,int ) ;
 scalar_t__ GetLastError () ;
 int HP_HASHVAL ;
 int HP_HMAC_INFO ;
 scalar_t__ NTE_BAD_KEY ;
 int derive_key (int ,int *,int) ;
 int hProv ;
 int memcmp (int*,int const*,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_hmac(void) {
    HCRYPTKEY hKey;
    HCRYPTHASH hHash;
    BOOL result;

    HMAC_INFO hmacInfo = { CALG_MD5, ((void*)0), 0, ((void*)0), 0 };
    DWORD dwLen;
    BYTE abData[256];
    static const BYTE hmac[16] = {
        0x1a, 0x7d, 0x49, 0xc5, 0x9b, 0x2d, 0x0b, 0x9c,
        0xcf, 0x10, 0x6b, 0xb6, 0x7d, 0x0f, 0x13, 0x32 };
    int i;

    for (i=0; i < ARRAY_SIZE(abData); i++) abData[i] = (BYTE)i;

    if (!derive_key(CALG_RC2, &hKey, 56)) return;

    result = CryptCreateHash(hProv, CALG_HMAC, hKey, 0, &hHash);
    ok(result, "%08x\n", GetLastError());
    if (!result) return;

    result = CryptSetHashParam(hHash, HP_HMAC_INFO, (BYTE*)&hmacInfo, 0);
    ok(result, "%08x\n", GetLastError());

    result = CryptHashData(hHash, abData, sizeof(abData), 0);
    ok(result, "%08x\n", GetLastError());

    dwLen = ARRAY_SIZE(abData);
    result = CryptGetHashParam(hHash, HP_HASHVAL, abData, &dwLen, 0);
    ok(result, "%08x\n", GetLastError());

    ok(!memcmp(abData, hmac, sizeof(hmac)), "HMAC failed!\n");

    result = CryptDestroyHash(hHash);
    ok(result, "%08x\n", GetLastError());

    result = CryptDestroyKey(hKey);
    ok(result, "%08x\n", GetLastError());


    result = CryptCreateHash(hProv, CALG_HMAC, 0, 0, &hHash);
    ok(!result && GetLastError() == NTE_BAD_KEY, "%08x\n", GetLastError());
}
