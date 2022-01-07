
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int CryptRegisterOIDFunction (int,char*,char*,int *,int *) ;
 int CryptUnregisterOIDFunction (int,char*,char*) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ GetLastError () ;
 int HKEY_LOCAL_MACHINE ;
 int PKCS_7_ASN_ENCODING ;
 int RegDeleteKeyA (int ,char*) ;
 int SetLastError (int) ;
 int X509_ASN_ENCODING ;
 int * bogusDll ;
 int ok (int,char*,...) ;
 int skip (char*) ;

__attribute__((used)) static void test_registerOIDFunction(void)
{
    BOOL ret;
    ret = CryptRegisterOIDFunction(X509_ASN_ENCODING, "foo", ((void*)0), bogusDll,
     ((void*)0));
    ok(!ret && GetLastError() == E_INVALIDARG,
     "Expected E_INVALIDARG: %d\n", GetLastError());

    ret = CryptRegisterOIDFunction(X509_ASN_ENCODING, "foo",
     "1.2.3.4.5.6.7.8.9.10", ((void*)0), ((void*)0));
    ok(ret, "Expected pseudo-success, got %d\n", GetLastError());
    SetLastError(0xdeadbeef);
    ret = CryptRegisterOIDFunction(X509_ASN_ENCODING, "CryptDllEncodeObject",
     "1.2.3.4.5.6.7.8.9.10", bogusDll, ((void*)0));
    if (!ret && GetLastError() == ERROR_ACCESS_DENIED)
    {
        skip("Need admin rights\n");
        return;
    }
    ok(ret, "CryptRegisterOIDFunction failed: %d\n", GetLastError());
    ret = CryptUnregisterOIDFunction(X509_ASN_ENCODING, "CryptDllEncodeObject",
     "1.2.3.4.5.6.7.8.9.10");
    ok(ret, "CryptUnregisterOIDFunction failed: %d\n", GetLastError());
    ret = CryptRegisterOIDFunction(X509_ASN_ENCODING, "bogus",
     "1.2.3.4.5.6.7.8.9.10", bogusDll, ((void*)0));
    ok(ret, "CryptRegisterOIDFunction failed: %d\n", GetLastError());
    ret = CryptUnregisterOIDFunction(X509_ASN_ENCODING, "bogus",
     "1.2.3.4.5.6.7.8.9.10");
    ok(ret, "CryptUnregisterOIDFunction failed: %d\n", GetLastError());

    ok(!RegDeleteKeyA(HKEY_LOCAL_MACHINE,
     "SOFTWARE\\Microsoft\\Cryptography\\OID\\EncodingType 1\\bogus"),
     "Could not delete bogus key\n");

    ret = CryptRegisterOIDFunction(PKCS_7_ASN_ENCODING, "CryptDllEncodeObject",
     "1.2.3.4.5.6.7.8.9.10", bogusDll, ((void*)0));
    ok(ret, "CryptRegisterOIDFunction failed: %d\n", GetLastError());
    ret = CryptUnregisterOIDFunction(PKCS_7_ASN_ENCODING, "CryptDllEncodeObject",
     "1.2.3.4.5.6.7.8.9.10");
    ok(ret, "CryptUnregisterOIDFunction failed: %d\n", GetLastError());

    ret = CryptRegisterOIDFunction(0, "CryptDllEncodeObject",
     "1.2.3.4.5.6.7.8.9.10", bogusDll, ((void*)0));
    ok(ret, "CryptRegisterOIDFunction failed: %d\n", GetLastError());
    ret = CryptUnregisterOIDFunction(0, "CryptDllEncodeObject",
     "1.2.3.4.5.6.7.8.9.10");
    ok(ret, "CryptUnregisterOIDFunction failed: %d\n", GetLastError());



    ok(!RegDeleteKeyA(HKEY_LOCAL_MACHINE,
     "SOFTWARE\\Microsoft\\Cryptography\\OID\\EncodingType 0\\CryptDllEncodeObject"),
     "Could not delete CryptDllEncodeObject key\n");



    ret = CryptRegisterOIDFunction(3, "CryptDllEncodeObject",
     "1.2.3.4.5.6.7.8.9.10", bogusDll, ((void*)0));
    ok(ret, "CryptRegisterOIDFunction failed: %d\n", GetLastError());
    ret = CryptUnregisterOIDFunction(3, "CryptDllEncodeObject",
     "1.2.3.4.5.6.7.8.9.10");
    ok(ret, "CryptUnregisterOIDFunction failed: %d\n", GetLastError());



    ok(!RegDeleteKeyA(HKEY_LOCAL_MACHINE,
     "SOFTWARE\\Microsoft\\Cryptography\\OID\\EncodingType 3\\CryptDllEncodeObject"),
     "Could not delete CryptDllEncodeObject key\n");
    ok(!RegDeleteKeyA(HKEY_LOCAL_MACHINE,
     "SOFTWARE\\Microsoft\\Cryptography\\OID\\EncodingType 3"),
     "Could not delete 'EncodingType 3' key\n");
}
