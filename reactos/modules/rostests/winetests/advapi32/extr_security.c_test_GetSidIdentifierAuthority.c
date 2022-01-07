
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int * PSID_IDENTIFIER_AUTHORITY ;
typedef int ***** PSID ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetLastError () ;
 int * GetSidIdentifierAuthority (int *****) ;
 scalar_t__ IsValidSid (int *****) ;
 int SECURITY_MAX_SID_SIZE ;
 int SetLastError (int) ;
 int memset (char*,int,int) ;
 int ok (int,char*,...) ;
 int pGetSidIdentifierAuthority ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetSidIdentifierAuthority(void)
{
    char buffer[SECURITY_MAX_SID_SIZE];
    PSID authority_sid = (PSID *)buffer;
    PSID_IDENTIFIER_AUTHORITY id;
    BOOL ret;

    if (!pGetSidIdentifierAuthority)
    {
        win_skip("GetSidIdentifierAuthority not available\n");
        return;
    }

    memset(buffer, 0xcc, sizeof(buffer));
    ret = IsValidSid(authority_sid);
    ok(!ret, "expected FALSE, got %u\n", ret);

    SetLastError(0xdeadbeef);
    id = GetSidIdentifierAuthority(authority_sid);
    ok(id != ((void*)0), "got NULL pointer as identifier authority\n");
    ok(GetLastError() == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", GetLastError());

    SetLastError(0xdeadbeef);
    id = GetSidIdentifierAuthority(((void*)0));
    ok(id != ((void*)0), "got NULL pointer as identifier authority\n");
    ok(GetLastError() == ERROR_SUCCESS, "expected ERROR_SUCCESS, got %u\n", GetLastError());
}
