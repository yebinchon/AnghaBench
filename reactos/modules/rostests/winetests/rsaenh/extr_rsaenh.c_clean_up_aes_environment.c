
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int CRYPT_DELETEKEYSET ;
 int CryptAcquireContextA (int *,int ,int *,int ,int ) ;
 int CryptReleaseContext (int ,int) ;
 scalar_t__ GetLastError () ;
 scalar_t__ NTE_BAD_FLAGS ;
 int PROV_RSA_AES ;
 int hProv ;
 int ok (int,char*,scalar_t__) ;
 int szContainer ;

__attribute__((used)) static void clean_up_aes_environment(void)
{
    BOOL result;

    result = CryptReleaseContext(hProv, 1);
    ok(!result && GetLastError()==NTE_BAD_FLAGS, "%08x\n", GetLastError());

    CryptAcquireContextA(&hProv, szContainer, ((void*)0), PROV_RSA_AES, CRYPT_DELETEKEYSET);
}
