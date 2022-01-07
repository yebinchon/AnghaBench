
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mySig ;
typedef int HCRYPTPROV ;
typedef int HCRYPTHASH ;
typedef unsigned int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int AT_SIGNATURE ;
 int CALG_SHA1 ;
 scalar_t__ CryptCreateHash (int ,int ,int ,int ,int *) ;
 int CryptDestroyHash (int ) ;
 scalar_t__ CryptHashData (int ,int const*,size_t,int ) ;
 scalar_t__ CryptSignHashA (int ,int ,int *,int ,int *,unsigned int*) ;
 int GetLastError () ;
 int memcmp (int *,int const*,unsigned int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void verifySig(HCRYPTPROV csp, const BYTE *toSign, size_t toSignLen,
 const BYTE *sig, unsigned int sigLen)
{
    HCRYPTHASH hash;
    BOOL ret = CryptCreateHash(csp, CALG_SHA1, 0, 0, &hash);

    ok(ret, "CryptCreateHash failed: %08x\n", GetLastError());
    if (ret)
    {
        BYTE mySig[64];
        DWORD mySigSize = sizeof(mySig);

        ret = CryptHashData(hash, toSign, toSignLen, 0);
        ok(ret, "CryptHashData failed: %08x\n", GetLastError());

        ret = CryptSignHashA(hash, AT_SIGNATURE, ((void*)0), 0, mySig, &mySigSize);
        ok(ret, "CryptSignHash failed: %08x\n", GetLastError());
        if (ret)
        {
            ok(mySigSize == sigLen, "Expected sig length %d, got %d\n",
             sigLen, mySigSize);
            ok(!memcmp(mySig, sig, sigLen), "Unexpected signature\n");
        }
        CryptDestroyHash(hash);
    }
}
