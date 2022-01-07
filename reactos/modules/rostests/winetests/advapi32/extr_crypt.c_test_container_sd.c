
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SECURITY_DESCRIPTOR ;
typedef int HCRYPTPROV ;
typedef scalar_t__ DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int CRYPT_DELETEKEYSET ;
 int CRYPT_MACHINE_KEYSET ;
 int CRYPT_NEWKEYSET ;
 int CryptAcquireContextA (int *,char*,char*,int ,int) ;
 int CryptGetProvParam (int ,int ,int *,scalar_t__*,int ) ;
 int CryptReleaseContext (int ,int ) ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,int *) ;
 int OWNER_SECURITY_INFORMATION ;
 int PP_KEYSET_SEC_DESCR ;
 int PROV_RSA_FULL ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_container_sd(void)
{
    HCRYPTPROV prov;
    SECURITY_DESCRIPTOR *sd;
    DWORD len, err;
    BOOL ret;

    ret = CryptAcquireContextA(&prov, "winetest", "Microsoft Enhanced Cryptographic Provider v1.0",
                               PROV_RSA_FULL, CRYPT_MACHINE_KEYSET|CRYPT_NEWKEYSET);
    ok(ret, "got %u\n", GetLastError());

    len = 0;
    SetLastError(0xdeadbeef);
    ret = CryptGetProvParam(prov, PP_KEYSET_SEC_DESCR, ((void*)0), &len, OWNER_SECURITY_INFORMATION);
    err = GetLastError();
    ok(ret, "got %u\n", err);
    ok(err == ERROR_INSUFFICIENT_BUFFER || broken(err == ERROR_INVALID_PARAMETER), "got %u\n", err);
    ok(len, "expected len > 0\n");

    sd = HeapAlloc(GetProcessHeap(), 0, len);
    ret = CryptGetProvParam(prov, PP_KEYSET_SEC_DESCR, (BYTE *)sd, &len, OWNER_SECURITY_INFORMATION);
    ok(ret, "got %u\n", GetLastError());
    HeapFree(GetProcessHeap(), 0, sd);

    ret = CryptReleaseContext(prov, 0);
    ok(ret, "got %u\n", GetLastError());

    ret = CryptAcquireContextA(&prov, "winetest", "Microsoft Enhanced Cryptographic Provider v1.0",
                               PROV_RSA_FULL, CRYPT_MACHINE_KEYSET|CRYPT_DELETEKEYSET);
    ok(ret, "got %u\n", GetLastError());
}
