
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PSID ;


 int GetLastError () ;
 int LocalFree (int *) ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;
 int pConvertStringSidToSidA (char*,int **) ;
 int* pGetSidSubAuthority (int *,int) ;
 int* pGetSidSubAuthorityCount (int *) ;
 int pIsValidSid (int *) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetSidSubAuthority(void)
{
    PSID psid = ((void*)0);

    if (!pGetSidSubAuthority || !pConvertStringSidToSidA || !pIsValidSid || !pGetSidSubAuthorityCount)
    {
        win_skip("Some functions not available\n");
        return;
    }


    ok(pConvertStringSidToSidA("S-1-5-21-93476-23408-4576",&psid),"ConvertStringSidToSidA failed\n");
    ok(pIsValidSid(psid),"Sid is not valid\n");
    SetLastError(0xbebecaca);
    ok(*pGetSidSubAuthorityCount(psid) == 4,"GetSidSubAuthorityCount gave %d expected 4\n",*pGetSidSubAuthorityCount(psid));
    ok(GetLastError() == 0,"GetLastError returned %d instead of 0\n",GetLastError());
    SetLastError(0xbebecaca);
    ok(*pGetSidSubAuthority(psid,0) == 21,"GetSidSubAuthority gave %d expected 21\n",*pGetSidSubAuthority(psid,0));
    ok(GetLastError() == 0,"GetLastError returned %d instead of 0\n",GetLastError());
    SetLastError(0xbebecaca);
    ok(*pGetSidSubAuthority(psid,1) == 93476,"GetSidSubAuthority gave %d expected 93476\n",*pGetSidSubAuthority(psid,1));
    ok(GetLastError() == 0,"GetLastError returned %d instead of 0\n",GetLastError());
    SetLastError(0xbebecaca);
    ok(pGetSidSubAuthority(psid,4) != ((void*)0),"Expected out of bounds GetSidSubAuthority to return a non-NULL pointer\n");
    ok(GetLastError() == 0,"GetLastError returned %d instead of 0\n",GetLastError());
    LocalFree(psid);
}
