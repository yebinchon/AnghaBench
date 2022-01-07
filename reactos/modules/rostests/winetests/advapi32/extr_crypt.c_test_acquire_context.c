
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HCRYPTPROV ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_ENVVAR_NOT_FOUND ;
 scalar_t__ ERROR_NOT_LOGGED_ON ;
 scalar_t__ ERROR_RING2_STACK_IN_USE ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 int NON_DEF_PROV_TYPE ;
 scalar_t__ NTE_BAD_PROV_TYPE ;
 scalar_t__ NTE_FAIL ;
 scalar_t__ NTE_KEYSET_NOT_DEF ;
 scalar_t__ NTE_PROV_TYPE_NOT_DEF ;
 scalar_t__ NTE_PROV_TYPE_NO_MATCH ;
 int PROV_RSA_FULL ;
 int SetLastError (int) ;
 int ok (int,char*,scalar_t__,...) ;
 scalar_t__ pCryptAcquireContextA (scalar_t__*,int *,char*,int,int ) ;
 int pCryptReleaseContext (scalar_t__,int ) ;
 int * szKeySet ;
 char* szNonExistentProv ;
 char* szRsaBaseProv ;

__attribute__((used)) static void test_acquire_context(void)
{
 BOOL result;
 HCRYPTPROV hProv;
 DWORD GLE;





 result = pCryptAcquireContextA(&hProv, ((void*)0), ((void*)0), 0, 0);
 ok(!result && GetLastError()==NTE_BAD_PROV_TYPE, "%d\n", GetLastError());

 result = pCryptAcquireContextA(&hProv, ((void*)0), ((void*)0), 1000, 0);
 ok(!result && GetLastError()==NTE_BAD_PROV_TYPE, "%d\n", GetLastError());

 result = pCryptAcquireContextA(&hProv, ((void*)0), ((void*)0), NON_DEF_PROV_TYPE, 0);
 ok(!result && GetLastError()==NTE_PROV_TYPE_NOT_DEF, "%d\n", GetLastError());

 result = pCryptAcquireContextA(&hProv, szKeySet, szNonExistentProv, PROV_RSA_FULL, 0);
 ok(!result && GetLastError()==NTE_KEYSET_NOT_DEF, "%d\n", GetLastError());

 result = pCryptAcquireContextA(&hProv, szKeySet, szRsaBaseProv, NON_DEF_PROV_TYPE, 0);
 ok(!result && GetLastError()==NTE_PROV_TYPE_NO_MATCH, "%d\n", GetLastError());
 hProv = 0;
 SetLastError(0xdeadbeef);
 result = pCryptAcquireContextA(&hProv, szKeySet, szRsaBaseProv, PROV_RSA_FULL, 0);
 GLE = GetLastError();
 ok(result && (GLE == ERROR_ENVVAR_NOT_FOUND ||
        GLE == ERROR_SUCCESS ||
        GLE == ERROR_RING2_STACK_IN_USE ||
        GLE == NTE_FAIL ||
        GLE == ERROR_NOT_LOGGED_ON), "%d/%d\n", result, GLE);

 if (hProv)
  pCryptReleaseContext(hProv, 0);


 hProv = 0;
 SetLastError(0xdeadbeef);
 result = pCryptAcquireContextA(&hProv, szKeySet, "", PROV_RSA_FULL, 0);
 GLE = GetLastError();
 ok(result && (GLE == ERROR_ENVVAR_NOT_FOUND ||
        GLE == ERROR_SUCCESS ||
        GLE == ERROR_RING2_STACK_IN_USE ||
        GLE == NTE_FAIL ||
        GLE == ERROR_NOT_LOGGED_ON), "%d/%d\n", result, GetLastError());

 if (hProv)
  pCryptReleaseContext(hProv, 0);
}
