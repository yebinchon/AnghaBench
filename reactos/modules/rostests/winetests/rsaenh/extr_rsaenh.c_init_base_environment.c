
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HCRYPTPROV ;
typedef int HCRYPTKEY ;
typedef int DWORD ;
typedef int BOOL ;


 int AT_KEYEXCHANGE ;
 int AT_SIGNATURE ;
 int CRYPT_NEWKEYSET ;
 int CRYPT_VERIFYCONTEXT ;
 int CryptAcquireContextA (scalar_t__*,int ,char const*,int ,int ) ;
 int CryptDestroyKey (int ) ;
 int CryptGenKey (scalar_t__,int ,int ,int *) ;
 int FALSE ;
 int GetLastError () ;
 int GetModuleHandleA (char*) ;
 scalar_t__ GetProcAddress (int ,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int NTE_BAD_FLAGS ;
 int NTE_BAD_KEYSET ;
 int NTE_KEYSET_NOT_DEF ;
 int NTE_TEMPORARY_PROFILE ;
 int PROV_RSA_FULL ;
 int TRUE ;
 scalar_t__ broken (int) ;
 scalar_t__ hProv ;
 int ok (int,char*,int,...) ;
 void* pCryptDuplicateHash ;
 int szContainer ;
 char const* szProvider ;
 int win_skip (char*) ;

__attribute__((used)) static BOOL init_base_environment(const char *provider, DWORD dwKeyFlags)
{
    HCRYPTKEY hKey;
    BOOL result;

    if (provider) szProvider = provider;

    pCryptDuplicateHash = (void *)GetProcAddress(GetModuleHandleA("advapi32.dll"), "CryptDuplicateHash");

    hProv = (HCRYPTPROV)INVALID_HANDLE_VALUE;

    result = CryptAcquireContextA(&hProv, szContainer, szProvider, PROV_RSA_FULL, CRYPT_VERIFYCONTEXT);
    ok(!result && (GetLastError()==NTE_BAD_FLAGS ||
       broken(GetLastError() == NTE_KEYSET_NOT_DEF )),
       "%d, %08x\n", result, GetLastError());

    if (!CryptAcquireContextA(&hProv, szContainer, szProvider, PROV_RSA_FULL, 0))
    {
        ok(GetLastError()==NTE_BAD_KEYSET ||
           broken(GetLastError() == NTE_TEMPORARY_PROFILE ) ||
           broken(GetLastError() == NTE_KEYSET_NOT_DEF ),
           "%08x\n", GetLastError());
        if (GetLastError()!=NTE_BAD_KEYSET)
        {
            win_skip("RSA full provider not available\n");
            return FALSE;
        }
        result = CryptAcquireContextA(&hProv, szContainer, szProvider, PROV_RSA_FULL,
                                     CRYPT_NEWKEYSET);
        ok(result, "%08x\n", GetLastError());
        if (!result)
        {
            win_skip("Couldn't create crypto provider\n");
            return FALSE;
        }
        result = CryptGenKey(hProv, AT_KEYEXCHANGE, dwKeyFlags, &hKey);
        ok(result, "%08x\n", GetLastError());
        if (result) CryptDestroyKey(hKey);
        result = CryptGenKey(hProv, AT_SIGNATURE, dwKeyFlags, &hKey);
        ok(result, "%08x\n", GetLastError());
        if (result) CryptDestroyKey(hKey);
    }
    return TRUE;
}
