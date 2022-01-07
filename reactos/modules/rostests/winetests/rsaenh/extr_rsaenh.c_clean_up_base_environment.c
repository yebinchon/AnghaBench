
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BOOL ;


 int CRYPT_DELETEKEYSET ;
 int CryptAcquireContextA (int *,int ,int ,int ,int ) ;
 scalar_t__ CryptReleaseContext (int ,int) ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ GetLastError () ;
 scalar_t__ NTE_BAD_FLAGS ;
 int PROV_RSA_FULL ;
 int SetLastError (int) ;
 scalar_t__ broken (scalar_t__) ;
 int hProv ;
 int ok (int,char*,...) ;
 int szContainer ;
 int szProvider ;

__attribute__((used)) static void clean_up_base_environment(void)
{
    BOOL result;

    SetLastError(0xdeadbeef);
    result = CryptReleaseContext(hProv, 1);
    ok(!result || broken(result) , "Expected failure\n");
    ok(GetLastError()==NTE_BAD_FLAGS, "Expected NTE_BAD_FLAGS, got %08x\n", GetLastError());


    SetLastError(0xdeadbeef);
    result = CryptReleaseContext(hProv, 0);
    ok(!result && GetLastError()==ERROR_INVALID_PARAMETER, "%08x\n", GetLastError());

    CryptAcquireContextA(&hProv, szContainer, szProvider, PROV_RSA_FULL, CRYPT_DELETEKEYSET);
}
