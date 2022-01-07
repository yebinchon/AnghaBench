
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HCRYPTPROV ;
typedef int HCRYPTKEY ;
typedef int BOOL ;


 int AT_KEYEXCHANGE ;
 int AT_SIGNATURE ;
 int CALG_AES ;
 int CALG_AES_128 ;
 int CRYPT_NEWKEYSET ;
 int CRYPT_VERIFYCONTEXT ;
 int CryptAcquireContextA (scalar_t__*,int ,int *,int ,int ) ;
 int CryptDestroyKey (int ) ;
 int CryptGenKey (scalar_t__,int ,int,int *) ;
 int FALSE ;
 int GetLastError () ;
 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int NTE_BAD_ALGID ;
 int NTE_BAD_FLAGS ;
 int NTE_BAD_KEYSET ;
 int NTE_PROV_TYPE_NOT_DEF ;
 int PROV_RSA_AES ;
 int TRUE ;
 scalar_t__ hProv ;
 int ok (int,char*,int,...) ;
 void* pCryptDuplicateHash ;
 int szContainer ;
 int win_skip (char*) ;

__attribute__((used)) static BOOL init_aes_environment(void)
{
    HCRYPTKEY hKey;
    BOOL result;

    pCryptDuplicateHash = (void *)GetProcAddress(GetModuleHandleA("advapi32.dll"), "CryptDuplicateHash");

    hProv = (HCRYPTPROV)INVALID_HANDLE_VALUE;






    result = CryptAcquireContextA(&hProv, szContainer, ((void*)0), PROV_RSA_AES, CRYPT_VERIFYCONTEXT);
    if (!result && GetLastError() == NTE_PROV_TYPE_NOT_DEF)
    {
        win_skip("RSA_AES provider not supported\n");
        return FALSE;
    }
    ok(!result && GetLastError()==NTE_BAD_FLAGS, "%d, %08x\n", result, GetLastError());

    if (!CryptAcquireContextA(&hProv, szContainer, ((void*)0), PROV_RSA_AES, 0))
    {
        ok(GetLastError()==NTE_BAD_KEYSET, "%08x\n", GetLastError());
        if (GetLastError()!=NTE_BAD_KEYSET) return FALSE;
        result = CryptAcquireContextA(&hProv, szContainer, ((void*)0), PROV_RSA_AES,
                                     CRYPT_NEWKEYSET);
        ok(result, "%08x\n", GetLastError());
        if (!result) return FALSE;
        result = CryptGenKey(hProv, AT_KEYEXCHANGE, 0, &hKey);
        ok(result, "%08x\n", GetLastError());
        if (result) CryptDestroyKey(hKey);
        result = CryptGenKey(hProv, AT_SIGNATURE, 0, &hKey);
        ok(result, "%08x\n", GetLastError());
        if (result) CryptDestroyKey(hKey);


        result = CryptGenKey(hProv, CALG_AES, 0, &hKey);
        ok(!result && GetLastError() == NTE_BAD_ALGID, "%d %08x\n", result, GetLastError());
        result = CryptGenKey(hProv, CALG_AES, 128 << 16, &hKey);
        ok(!result && GetLastError() == NTE_BAD_ALGID, "%d %08x\n", result, GetLastError());
        result = CryptGenKey(hProv, CALG_AES_128, 0, &hKey);
        ok(result, "%08x\n", GetLastError());
        if (result) CryptDestroyKey(hKey);
    }
    return TRUE;
}
