
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LSTATUS ;
typedef char* LPSTR ;
typedef int LPBYTE ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef char CHAR ;
typedef int BOOL ;


 scalar_t__ ARRAY_SIZE (char*) ;
 int CryptRegisterDefaultOIDFunction (int ,char*,int,int *) ;
 int CryptUnregisterDefaultOIDFunction (int ,char*,int *) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_FILE_EXISTS ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ GetLastError () ;
 int HKEY_LOCAL_MACHINE ;
 int MAX_PATH ;
 scalar_t__ REG_MULTI_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyA (int ,char*,int *) ;
 scalar_t__ RegQueryValueExA (int ,char const*,int *,scalar_t__*,int ,scalar_t__*) ;
 int SetLastError (int) ;
 int X509_ASN_ENCODING ;
 int * bogus2Dll ;
 int * bogusDll ;
 int lstrcmpiA (char*,char const*) ;
 scalar_t__ lstrlenA (char*) ;
 int ok (int,char*,...) ;
 int skip (char*) ;
 int sprintf (char*,char const*,int ,char const*) ;

__attribute__((used)) static void test_registerDefaultOIDFunction(void)
{
    static const char fmt[] =
     "Software\\Microsoft\\Cryptography\\OID\\EncodingType %d\\%s\\DEFAULT";
    static const char func[] = "CertDllOpenStoreProv";
    char buf[MAX_PATH];
    BOOL ret;
    LSTATUS rc;
    HKEY key;

    ret = CryptRegisterDefaultOIDFunction(0, ((void*)0), 0, ((void*)0));
    ok(!ret && GetLastError() == E_INVALIDARG,
     "Expected E_INVALIDARG, got %08x\n", GetLastError());




    SetLastError(0xdeadbeef);
    ret = CryptRegisterDefaultOIDFunction(0, "CertDllOpenStoreProv", 0,
     bogusDll);
    if (!ret && GetLastError() == ERROR_ACCESS_DENIED)
    {
        skip("Need admin rights\n");
        return;
    }
    ok(ret, "CryptRegisterDefaultOIDFunction failed: %08x\n", GetLastError());

    ret = CryptRegisterDefaultOIDFunction(0, "CertDllOpenStoreProv", 0,
     bogusDll);
    ok(!ret && GetLastError() == ERROR_FILE_EXISTS,
     "Expected ERROR_FILE_EXISTS, got %08x\n", GetLastError());

    ret = CryptRegisterDefaultOIDFunction(0, "CertDllOpenStoreProv", 1,
     bogusDll);
    ok(!ret && GetLastError() == ERROR_FILE_EXISTS,
     "Expected ERROR_FILE_EXISTS, got %08x\n", GetLastError());

    ret = CryptRegisterDefaultOIDFunction(0, "CertDllOpenStoreProv", 1,
     bogus2Dll);
    ok(ret, "CryptRegisterDefaultOIDFunction failed: %08x\n", GetLastError());
    sprintf(buf, fmt, 0, func);
    rc = RegOpenKeyA(HKEY_LOCAL_MACHINE, buf, &key);
    ok(rc == 0, "Expected key to exist, RegOpenKeyA failed: %d\n", rc);
    if (rc == 0)
    {
        static const CHAR dllA[] = "Dll";
        static const CHAR bogusDll_A[] = "bogus.dll";
        static const CHAR bogus2Dll_A[] = "bogus2.dll";
        CHAR dllBuf[MAX_PATH];
        DWORD type, size;
        LPSTR ptr;

        size = ARRAY_SIZE(dllBuf);
        rc = RegQueryValueExA(key, dllA, ((void*)0), &type, (LPBYTE)dllBuf, &size);
        ok(rc == 0,
         "Expected Dll value to exist, RegQueryValueExA failed: %d\n", rc);
        ok(type == REG_MULTI_SZ, "Expected type REG_MULTI_SZ, got %d\n", type);

        ptr = dllBuf;
        ok(!lstrcmpiA(ptr, bogusDll_A), "Unexpected dll\n");
        ptr += lstrlenA(ptr) + 1;
        ok(!lstrcmpiA(ptr, bogus2Dll_A), "Unexpected dll\n");
        RegCloseKey(key);
    }

    ret = CryptUnregisterDefaultOIDFunction(0, "CertDllOpenStoreProv",
     bogusDll);
    ok(ret, "CryptUnregisterDefaultOIDFunction failed: %08x\n",
     GetLastError());
    ret = CryptUnregisterDefaultOIDFunction(0, "CertDllOpenStoreProv",
     bogus2Dll);
    ok(ret, "CryptUnregisterDefaultOIDFunction failed: %08x\n",
     GetLastError());

    ret = CryptUnregisterDefaultOIDFunction(0, "CertDllOpenStoreProv",
     bogusDll);
    ok(!ret && GetLastError() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %d\n", GetLastError());


    ret = CryptRegisterDefaultOIDFunction(X509_ASN_ENCODING,
     "CertDllOpenStoreProv", 0, bogusDll);
    ok(ret, "CryptRegisterDefaultOIDFunction failed\n");
    ret = CryptUnregisterDefaultOIDFunction(X509_ASN_ENCODING,
     "CertDllOpenStoreProv", bogusDll);
    ok(ret, "CryptUnregisterDefaultOIDFunction failed\n");
    ret = CryptUnregisterDefaultOIDFunction(X509_ASN_ENCODING,
     "CertDllOpenStoreProv", bogusDll);
    ok(!ret && GetLastError() == ERROR_FILE_NOT_FOUND,
     "Expected ERROR_FILE_NOT_FOUND, got %08x\n", GetLastError());
}
