
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ CryptGetProvParam (int ,int ,int *,int*,int ) ;
 scalar_t__ GetLastError () ;
 scalar_t__ NTE_BAD_TYPE ;
 int PP_KEYX_KEYSIZE_INC ;
 int PP_SIG_KEYSIZE_INC ;
 int SetLastError (int) ;
 int hProv ;
 int nt4 ;
 int ok (int,char*,scalar_t__,int) ;
 int skip (char*) ;

__attribute__((used)) static void test_prov(void)
{
    BOOL result;
    DWORD dwLen, dwInc;

    dwLen = (DWORD)sizeof(DWORD);
    SetLastError(0xdeadbeef);
    result = CryptGetProvParam(hProv, PP_SIG_KEYSIZE_INC, (BYTE*)&dwInc, &dwLen, 0);
    if (!result && GetLastError() == NTE_BAD_TYPE)
    {
        skip("PP_SIG_KEYSIZE_INC is not supported (win9x or NT)\n");
        nt4++;
    }
    else
        ok(result && dwInc==8, "%08x, %d\n", GetLastError(), dwInc);

    dwLen = (DWORD)sizeof(DWORD);
    SetLastError(0xdeadbeef);
    result = CryptGetProvParam(hProv, PP_KEYX_KEYSIZE_INC, (BYTE*)&dwInc, &dwLen, 0);
    if (!result && GetLastError() == NTE_BAD_TYPE)
        skip("PP_KEYX_KEYSIZE_INC is not supported (win9x or NT)\n");
    else
        ok(result && dwInc==8, "%08x, %d\n", GetLastError(), dwInc);
}
