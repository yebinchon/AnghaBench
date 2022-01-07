
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPSTR ;
typedef int DWORD ;


 int CRYPT_DELETE_DEFAULT ;
 int CRYPT_MACHINE_DEFAULT ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ GetLastError () ;
 int LMEM_ZEROINIT ;
 int * LocalAlloc (int ,int) ;
 int LocalFree (int *) ;
 int * MS_DEF_PROV_A ;
 int PROV_RSA_FULL ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 scalar_t__ lstrlenA (int *) ;
 int ok (int,char*,scalar_t__,...) ;
 int pCryptGetDefaultProviderA (int ,int *,int,int *,int*) ;
 int pCryptSetProviderExA (int *,int ,int*,int) ;
 int skip (char*) ;
 int strcmp (int *,int *) ;
 int strlen (int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_set_provider_ex(void)
{
 DWORD result;
 DWORD notNull = 5;
        LPSTR curProvName = ((void*)0);
        DWORD curlen;


 LPSTR pszProvName = ((void*)0);
 DWORD cbProvName;

 if(!pCryptGetDefaultProviderA || !pCryptSetProviderExA)
 {
     win_skip("CryptGetDefaultProviderA and/or CryptSetProviderExA are not available\n");
     return;
 }


        pCryptGetDefaultProviderA(PROV_RSA_FULL, ((void*)0), CRYPT_MACHINE_DEFAULT, ((void*)0), &curlen);
        if (!(curProvName = LocalAlloc(LMEM_ZEROINIT, curlen)))
            return;
        result = pCryptGetDefaultProviderA(PROV_RSA_FULL, ((void*)0), CRYPT_MACHINE_DEFAULT, curProvName, &curlen);
        ok(result, "%d\n", GetLastError());


 result = pCryptSetProviderExA(MS_DEF_PROV_A, PROV_RSA_FULL, &notNull, CRYPT_MACHINE_DEFAULT);
 ok(!result && GetLastError()==ERROR_INVALID_PARAMETER, "expected %i, got %d\n",
  ERROR_INVALID_PARAMETER, GetLastError());


        SetLastError(0xdeadbeef);
 result = pCryptSetProviderExA(MS_DEF_PROV_A, PROV_RSA_FULL, ((void*)0), CRYPT_MACHINE_DEFAULT | CRYPT_DELETE_DEFAULT);
 if (!result)
 {
                ok( GetLastError() == ERROR_ACCESS_DENIED || broken(GetLastError() == ERROR_INVALID_PARAMETER),
                    "wrong error %u\n", GetLastError() );
  skip("Not enough rights to remove the default provider\n");
                LocalFree(curProvName);
  return;
 }

 result = pCryptSetProviderExA(MS_DEF_PROV_A, PROV_RSA_FULL, ((void*)0), CRYPT_MACHINE_DEFAULT);
 ok(result, "%d\n", GetLastError());


 result = pCryptGetDefaultProviderA(PROV_RSA_FULL, ((void*)0), CRYPT_MACHINE_DEFAULT, ((void*)0), &cbProvName);
 ok(result, "%d\n", GetLastError());
 if (!(pszProvName = LocalAlloc(LMEM_ZEROINIT, cbProvName)))
  goto reset;

 result = pCryptGetDefaultProviderA(PROV_RSA_FULL, ((void*)0), CRYPT_MACHINE_DEFAULT, pszProvName, &cbProvName);
 ok(result && !strcmp(MS_DEF_PROV_A, pszProvName), "expected %s, got %s\n", MS_DEF_PROV_A, pszProvName);
 ok(result && cbProvName==(strlen(MS_DEF_PROV_A) + 1), "expected %i, got %d\n", (lstrlenA(MS_DEF_PROV_A) + 1), cbProvName);

 LocalFree(pszProvName);

reset:

        result = pCryptSetProviderExA(curProvName, PROV_RSA_FULL, ((void*)0), CRYPT_MACHINE_DEFAULT);
        ok(result, "%d\n", GetLastError());
        LocalFree(curProvName);
}
