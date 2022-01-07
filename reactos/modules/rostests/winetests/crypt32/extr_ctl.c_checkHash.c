
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashProperty ;
typedef int hash ;
typedef int PCCTL_CONTEXT ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;
typedef int ALG_ID ;


 int CertGetCTLContextProperty (int ,int,int *,int*) ;
 int CryptHashCertificate (int ,int ,int ,int const*,int,int *,int*) ;
 int GetLastError () ;
 int memcmp (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void checkHash(const BYTE *data, DWORD dataLen, ALG_ID algID,
 PCCTL_CONTEXT context, DWORD propID)
{
    BYTE hash[20] = { 0 }, hashProperty[20];
    BOOL ret;
    DWORD size;

    memset(hash, 0, sizeof(hash));
    memset(hashProperty, 0, sizeof(hashProperty));
    size = sizeof(hash);
    ret = CryptHashCertificate(0, algID, 0, data, dataLen, hash, &size);
    ok(ret, "CryptHashCertificate failed: %08x\n", GetLastError());
    ret = CertGetCTLContextProperty(context, propID, hashProperty, &size);
    ok(ret, "CertGetCTLContextProperty failed: %08x\n", GetLastError());
    if (ret)
        ok(!memcmp(hash, hashProperty, size),
         "Unexpected hash for property %d\n", propID);
}
