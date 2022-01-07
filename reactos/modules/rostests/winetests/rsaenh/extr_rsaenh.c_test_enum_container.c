
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abContainerName ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int CRYPT_FIRST ;
 scalar_t__ CryptGetProvParam (int ,int ,int *,int*,int ) ;
 scalar_t__ ERROR_NO_MORE_ITEMS ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 int MAX_PATH ;
 int PP_ENUMCONTAINERS ;
 int SetLastError (int) ;
 scalar_t__ TRUE ;
 scalar_t__ broken (int) ;
 int hProv ;
 int ok (int,char*,scalar_t__,...) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void test_enum_container(void)
{
    BYTE abContainerName[MAX_PATH + 2];
    DWORD dwBufferLen;
    BOOL result, fFound = FALSE;



    SetLastError(0xdeadbeef);
    result = CryptGetProvParam(hProv, PP_ENUMCONTAINERS, ((void*)0), &dwBufferLen, CRYPT_FIRST);
    ok (result, "%08x\n", GetLastError());
    ok (dwBufferLen == MAX_PATH + 1 ||
        broken(dwBufferLen != MAX_PATH + 1),
        "Expected dwBufferLen to be (MAX_PATH + 1), it was : %d\n", dwBufferLen);


    dwBufferLen = (DWORD)sizeof(abContainerName);
    result = CryptGetProvParam(hProv, PP_ENUMCONTAINERS, abContainerName, &dwBufferLen, CRYPT_FIRST);
    ok (result && dwBufferLen == (DWORD)sizeof(abContainerName), "%08x\n", GetLastError());


    do {
        if (!strcmp((const char*)abContainerName, "winetest")) fFound = TRUE;
        dwBufferLen = (DWORD)sizeof(abContainerName);
    } while (CryptGetProvParam(hProv, PP_ENUMCONTAINERS, abContainerName, &dwBufferLen, 0));

    ok (fFound && GetLastError() == ERROR_NO_MORE_ITEMS, "%d, %08x\n", fFound, GetLastError());
}
