
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pbData ;
typedef scalar_t__ HCRYPTKEY ;
typedef int HCRYPTHASH ;
typedef int DWORD ;
typedef int BOOL ;
typedef int ALG_ID ;


 int CALG_MD2 ;
 int CRYPT_EXPORTABLE ;
 int CryptCreateHash (int ,int ,int ,int ,int *) ;
 int CryptDeriveKey (int ,int ,int ,int,scalar_t__*) ;
 int CryptDestroyHash (int ) ;
 int CryptGetHashParam (int ,int ,unsigned char*,int*,int ) ;
 int CryptHashData (int ,unsigned char*,int,int ) ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int HP_HASHVAL ;
 scalar_t__ NTE_BAD_ALGID ;
 int TRUE ;
 int hProv ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static BOOL derive_key(ALG_ID aiAlgid, HCRYPTKEY *phKey, DWORD len)
{
    HCRYPTHASH hHash;
    BOOL result;
    unsigned char pbData[2000];
    int i;

    *phKey = 0;
    for (i=0; i<2000; i++) pbData[i] = (unsigned char)i;
    result = CryptCreateHash(hProv, CALG_MD2, 0, 0, &hHash);
    if (!result) {

        ok(GetLastError()==NTE_BAD_ALGID, "%08x\n", GetLastError());
        return FALSE;
    }
    ok(result, "%08x\n", GetLastError());
    result = CryptHashData(hHash, pbData, sizeof(pbData), 0);
    ok(result, "%08x\n", GetLastError());
    if (!result) return FALSE;
    result = CryptDeriveKey(hProv, aiAlgid, hHash, (len << 16) | CRYPT_EXPORTABLE, phKey);
    ok(result, "%08x\n", GetLastError());
    if (!result) return FALSE;
    len = 2000;
    result = CryptGetHashParam(hHash, HP_HASHVAL, pbData, &len, 0);
    ok(result, "%08x\n", GetLastError());
    CryptDestroyHash(hHash);
    return TRUE;
}
