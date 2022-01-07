
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCERT_PUBLIC_KEY_INFO ;
typedef int HCRYPTPROV ;
typedef int BOOL ;


 int CRYPT_DELETEKEYSET ;
 int CRYPT_NEWKEYSET ;
 int CryptAcquireContextA (int *,int ,int ,int ,int ) ;
 int CryptReleaseContext (int ,int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int MS_DEF_PROV_A ;
 int PROV_RSA_FULL ;
 int cspName ;
 int ok (int ,char*) ;
 int testExportPublicKey (int ,int **) ;
 int testImportPublicKey (int ,int *) ;

__attribute__((used)) static void testPortPublicKeyInfo(void)
{
    HCRYPTPROV csp;
    BOOL ret;
    PCERT_PUBLIC_KEY_INFO info = ((void*)0);


    CryptAcquireContextA(&csp, cspName, MS_DEF_PROV_A, PROV_RSA_FULL,
     CRYPT_DELETEKEYSET);
    ret = CryptAcquireContextA(&csp, cspName, MS_DEF_PROV_A, PROV_RSA_FULL,
     CRYPT_NEWKEYSET);
    ok(ret,"CryptAcquireContextA failed\n");

    testExportPublicKey(csp, &info);
    testImportPublicKey(csp, info);

    HeapFree(GetProcessHeap(), 0, info);
    CryptReleaseContext(csp, 0);
    ret = CryptAcquireContextA(&csp, cspName, MS_DEF_PROV_A, PROV_RSA_FULL,
     CRYPT_DELETEKEYSET);
    ok(ret,"CryptAcquireContextA failed\n");
}
