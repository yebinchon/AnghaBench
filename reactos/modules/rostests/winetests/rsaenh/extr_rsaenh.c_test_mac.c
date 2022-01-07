
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mac_40 ;
typedef int abData ;
typedef int HCRYPTKEY ;
typedef int HCRYPTHASH ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int ARRAY_SIZE (int*) ;
 int CALG_MAC ;
 int CALG_RC2 ;
 int CALG_RC4 ;
 int CryptCreateHash (int ,int ,int ,int ,int *) ;
 int CryptDestroyHash (int ) ;
 int CryptDestroyKey (int ) ;
 int CryptEncrypt (int ,int ,int ,int ,int*,int*,int) ;
 int CryptGetHashParam (int ,int ,int*,int*,int ) ;
 int CryptHashData (int ,int*,int,int ) ;
 scalar_t__ GetLastError () ;
 int HP_HASHVAL ;
 scalar_t__ NTE_BAD_KEY ;
 int SetLastError (int) ;
 int TRUE ;
 scalar_t__ broken (int) ;
 int derive_key (int ,int *,int) ;
 int hProv ;
 int memcmp (int*,int const*,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_mac(void) {
    HCRYPTKEY hKey;
    HCRYPTHASH hHash;
    BOOL result;
    DWORD dwLen;
    BYTE abData[256], abEnc[264];
    static const BYTE mac_40[8] = { 0xb7, 0xa2, 0x46, 0xe9, 0x11, 0x31, 0xe0, 0xad};
    int i;

    for (i=0; i < ARRAY_SIZE(abData); i++) abData[i] = (BYTE)i;
    for (i=0; i < ARRAY_SIZE(abData); i++) abEnc[i] = (BYTE)i;

    if (!derive_key(CALG_RC2, &hKey, 40)) return;

    dwLen = 256;
    result = CryptEncrypt(hKey, 0, TRUE, 0, abEnc, &dwLen, 264);
    ok (result && dwLen == 264, "%08x, dwLen: %d\n", GetLastError(), dwLen);

    result = CryptCreateHash(hProv, CALG_MAC, hKey, 0, &hHash);
    ok(result, "%08x\n", GetLastError());
    if (!result) return;

    result = CryptHashData(hHash, abData, sizeof(abData), 0);
    ok(result, "%08x\n", GetLastError());

    dwLen = ARRAY_SIZE(abData);
    result = CryptGetHashParam(hHash, HP_HASHVAL, abData, &dwLen, 0);
    ok(result && dwLen == 8, "%08x, dwLen: %d\n", GetLastError(), dwLen);

    ok(!memcmp(abData, mac_40, sizeof(mac_40)), "MAC failed!\n");

    result = CryptDestroyHash(hHash);
    ok(result, "%08x\n", GetLastError());

    result = CryptDestroyKey(hKey);
    ok(result, "%08x\n", GetLastError());


    if (!derive_key(CALG_RC4, &hKey, 56)) return;

    SetLastError(0xdeadbeef);
    result = CryptCreateHash(hProv, CALG_MAC, hKey, 0, &hHash);
    ok((!result && GetLastError() == NTE_BAD_KEY) ||
            broken(result),
            "%08x\n", GetLastError());

    result = CryptDestroyKey(hKey);
    ok(result, "%08x\n", GetLastError());
}
