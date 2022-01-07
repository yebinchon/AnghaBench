
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HCRYPTPROV ;


 int CRYPT_DELETEKEYSET ;
 int CRYPT_NEWKEYSET ;
 int PROV_RSA_FULL ;
 scalar_t__ pCryptAcquireContextA (int *,int ,int *,int ,int ) ;
 int pCryptReleaseContext (int ,int ) ;
 int szBadKeySet ;
 int szKeySet ;
 int * szRsaBaseProv ;

__attribute__((used)) static void init_environment(void)
{
 HCRYPTPROV hProv;


 if (!pCryptAcquireContextA(&hProv, szKeySet, szRsaBaseProv, PROV_RSA_FULL, 0))
 {
  pCryptAcquireContextA(&hProv, szKeySet, szRsaBaseProv, PROV_RSA_FULL, CRYPT_NEWKEYSET);
 }
 pCryptReleaseContext(hProv, 0);


 if (!pCryptAcquireContextA(&hProv, szKeySet, ((void*)0), PROV_RSA_FULL, 0))
 {
  pCryptAcquireContextA(&hProv, szKeySet, ((void*)0), PROV_RSA_FULL, CRYPT_NEWKEYSET);
 }
 pCryptReleaseContext(hProv, 0);


 if (pCryptAcquireContextA(&hProv, szBadKeySet, szRsaBaseProv, PROV_RSA_FULL, 0))
 {
  pCryptReleaseContext(hProv, 0);
  pCryptAcquireContextA(&hProv, szBadKeySet, szRsaBaseProv, PROV_RSA_FULL, CRYPT_DELETEKEYSET);
 }
}
