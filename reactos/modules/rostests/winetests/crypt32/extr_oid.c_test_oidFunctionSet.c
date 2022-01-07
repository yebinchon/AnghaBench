
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef scalar_t__ HCRYPTOIDFUNCSET ;
typedef int HCRYPTOIDFUNCADDR ;
typedef int DWORD ;
typedef int BOOL ;


 int CryptGetDefaultOIDDllList (scalar_t__,int ,int *,int*) ;
 int CryptGetOIDFunctionAddress (scalar_t__,int ,int ,int ,void**,int *) ;
 scalar_t__ CryptInitOIDFunctionSet (char*,int) ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int X509_ASN_ENCODING ;
 int X509_CERT ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_oidFunctionSet(void)
{
    HCRYPTOIDFUNCSET set1, set2;
    BOOL ret;
    LPWSTR buf = ((void*)0);
    DWORD size;






    set1 = CryptInitOIDFunctionSet("funky", 0);
    ok(set1 != 0, "CryptInitOIDFunctionSet failed: %08x\n", GetLastError());
    if (set1)
    {




        size = 0;
        ret = CryptGetDefaultOIDDllList(set1, 0, ((void*)0), &size);
        ok(ret, "CryptGetDefaultOIDDllList failed: %08x\n", GetLastError());
        if (ret)
        {
            buf = HeapAlloc(GetProcessHeap(), 0, size * sizeof(WCHAR));
            if (buf)
            {
                ret = CryptGetDefaultOIDDllList(set1, 0, buf, &size);
                ok(ret, "CryptGetDefaultOIDDllList failed: %08x\n",
                 GetLastError());
                ok(!*buf, "Expected empty DLL list\n");
                HeapFree(GetProcessHeap(), 0, buf);
            }
        }
    }


    set1 = CryptInitOIDFunctionSet("", 1);
    ok(set1 != 0, "CryptInitOIDFunctionSet failed: %08x\n", GetLastError());
    set2 = CryptInitOIDFunctionSet("", 0);
    ok(set2 != 0, "CryptInitOIDFunctionSet failed: %08x\n", GetLastError());



    ok(set1 == set2, "Expected identical sets\n");
    if (set1)
    {



    }


    set1 = CryptInitOIDFunctionSet("CryptDllEncodeObject", 0);
    ok(set1 != 0, "CryptInitOIDFunctionSet failed: %08x\n", GetLastError());
    if (set1)
    {
        void *funcAddr;
        HCRYPTOIDFUNCADDR hFuncAddr;

        ret = CryptGetOIDFunctionAddress(set1, X509_ASN_ENCODING, X509_CERT, 0,
         &funcAddr, &hFuncAddr);
        ok((!ret && GetLastError() == ERROR_FILE_NOT_FOUND) ||
         broken(ret) ,
         "Expected ERROR_FILE_NOT_FOUND, got %08x\n", GetLastError());
    }
}
