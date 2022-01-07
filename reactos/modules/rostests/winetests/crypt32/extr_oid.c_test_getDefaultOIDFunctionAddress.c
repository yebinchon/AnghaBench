
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HCRYPTOIDFUNCSET ;
typedef scalar_t__ HCRYPTOIDFUNCADDR ;
typedef int BOOL ;


 int CryptGetDefaultOIDFunctionAddress (scalar_t__,int ,int *,int ,void**,scalar_t__*) ;
 scalar_t__ CryptInitOIDFunctionSet (char*,int ) ;
 int CryptRegisterDefaultOIDFunction (int ,char*,int ,int ) ;
 int CryptUnregisterDefaultOIDFunction (int ,char*,int ) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ GetLastError () ;
 int SetLastError (int) ;
 int X509_ASN_ENCODING ;
 int bogusDll ;
 int ok (int,char*,scalar_t__) ;
 int skip (char*) ;

__attribute__((used)) static void test_getDefaultOIDFunctionAddress(void)
{
    BOOL ret;
    HCRYPTOIDFUNCSET set;
    void *funcAddr;
    HCRYPTOIDFUNCADDR hFuncAddr;
    set = CryptInitOIDFunctionSet("CertDllOpenStoreProv", 0);
    ok(set != 0, "CryptInitOIDFunctionSet failed: %d\n", GetLastError());

    hFuncAddr = 0;
    ret = CryptGetDefaultOIDFunctionAddress(set, 0, ((void*)0), 0, &funcAddr,
     &hFuncAddr);
    ok(!ret && GetLastError() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %d\n", GetLastError());



    ret = CryptGetDefaultOIDFunctionAddress(set, X509_ASN_ENCODING, ((void*)0), 0,
     &funcAddr, &hFuncAddr);
    ok(!ret && GetLastError() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %d\n", GetLastError());


    SetLastError(0xdeadbeef);
    ret = CryptRegisterDefaultOIDFunction(0, "CertDllOpenStoreProv", 0,
     bogusDll);
    if (!ret && GetLastError() == ERROR_ACCESS_DENIED)
        skip("Need admin rights\n");
    else
        ok(ret, "CryptRegisterDefaultOIDFunction failed: %08x\n", GetLastError());
    ret = CryptGetDefaultOIDFunctionAddress(set, 0, ((void*)0), 0, &funcAddr,
     &hFuncAddr);
    ok(!ret && GetLastError() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %d\n", GetLastError());
    CryptUnregisterDefaultOIDFunction(0, "CertDllOpenStoreProv", bogusDll);
}
