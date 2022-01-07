
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; char* member_2; int * DnsServerName; int * TargetName; int * member_9; int member_8; int member_7; int * member_6; int * member_5; int * member_4; int * member_3; int * member_1; } ;
typedef int PCREDENTIALA ;
typedef int DWORD ;
typedef TYPE_1__ CREDENTIAL_TARGET_INFORMATIONA ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NOT_FOUND ;
 scalar_t__ GetLastError () ;
 int SetLastError (int) ;
 int ok (int,char*,...) ;
 scalar_t__ pCredReadDomainCredentialsA (TYPE_1__*,int ,int*,int **) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_CredReadDomainCredentialsA(void)
{
    BOOL ret;
    char target_name[] = "no_such_target";
    CREDENTIAL_TARGET_INFORMATIONA info = {target_name, ((void*)0), target_name, ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0, 0, ((void*)0)};
    DWORD count;
    PCREDENTIALA* creds;

    if (!pCredReadDomainCredentialsA)
    {
        win_skip("CredReadDomainCredentialsA() is not implemented\n");
        return;
    }



if(0)
{
    ret = pCredReadDomainCredentialsA(&info, 0, ((void*)0), &creds);
    ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER, "!\n");
    ret = pCredReadDomainCredentialsA(&info, 0, &count, ((void*)0));
    ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER, "!\n");
}

    SetLastError(0xdeadbeef);
    ret = pCredReadDomainCredentialsA(((void*)0), 0, &count, &creds);
    ok(!ret && GetLastError() == ERROR_INVALID_PARAMETER,
        "CredReadDomainCredentialsA should have failed with ERROR_INVALID_PARAMETER instead of %d\n",
        GetLastError());

    SetLastError(0xdeadbeef);
    creds = (void*)0x12345;
    count = 2;
    ret = pCredReadDomainCredentialsA(&info, 0, &count, &creds);
    ok(!ret && GetLastError() == ERROR_NOT_FOUND,
        "CredReadDomainCredentialsA should have failed with ERROR_NOT_FOUND instead of %d\n",
        GetLastError());
    ok(count ==0 && creds == ((void*)0), "CredReadDomainCredentialsA must not return any result\n");

    info.TargetName = ((void*)0);

    SetLastError(0xdeadbeef);
    ret = pCredReadDomainCredentialsA(&info, 0, &count, &creds);
    ok(!ret, "CredReadDomainCredentialsA should have failed\n");
    ok(GetLastError() == ERROR_NOT_FOUND ||
        GetLastError() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_NOT_FOUND or ERROR_INVALID_PARAMETER instead of %d\n",
        GetLastError());

    info.DnsServerName = ((void*)0);

    SetLastError(0xdeadbeef);
    ret = pCredReadDomainCredentialsA(&info, 0, &count, &creds);
    ok(!ret, "CredReadDomainCredentialsA should have failed\n");
    ok(GetLastError() == ERROR_NOT_FOUND ||
        GetLastError() == ERROR_INVALID_PARAMETER,
        "Expected ERROR_NOT_FOUND or ERROR_INVALID_PARAMETER instead of %d\n",
        GetLastError());
}
