
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashProperty ;
typedef int hash ;
typedef int PCCERT_CONTEXT ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;
typedef int ALG_ID ;


 int CertGetCertificateContextProperty (int ,int,int *,int*) ;
 int CryptHashCertificate (int ,int ,int ,int const*,int,int *,int*) ;
 int GetLastError () ;
 int memcmp (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void checkHash(const BYTE *data, DWORD dataLen, ALG_ID algID,
 PCCERT_CONTEXT context, DWORD propID)
{
    BYTE hash[20] = { 0 }, hashProperty[20];
    BOOL ret;
    DWORD size;
    DWORD dwSizeWithNull;

    memset(hash, 0, sizeof(hash));
    memset(hashProperty, 0, sizeof(hashProperty));
    size = sizeof(hash);
    ret = CryptHashCertificate(0, algID, 0, data, dataLen, hash, &size);
    ok(ret, "CryptHashCertificate failed: %08x\n", GetLastError());
    ret = CertGetCertificateContextProperty(context, propID, ((void*)0),
     &dwSizeWithNull);
    ok(ret, "algID %08x, propID %d: CertGetCertificateContextProperty failed: %08x\n",
     algID, propID, GetLastError());
    ret = CertGetCertificateContextProperty(context, propID, hashProperty,
     &size);
    ok(ret, "CertGetCertificateContextProperty failed: %08x\n",
     GetLastError());
    ok(!memcmp(hash, hashProperty, size), "Unexpected hash for property %d\n",
     propID);
    ok(size == dwSizeWithNull, "Unexpected length of hash for property: received %d instead of %d\n",
     dwSizeWithNull,size);
}
