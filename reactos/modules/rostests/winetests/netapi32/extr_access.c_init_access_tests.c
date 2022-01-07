
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 scalar_t__ FALSE ;
 scalar_t__ GetComputerNameW (scalar_t__*,int *) ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetUserNameW (scalar_t__*,int *) ;
 scalar_t__ TRUE ;
 scalar_t__* computer_name ;
 int ok (scalar_t__,char*) ;
 scalar_t__* user_name ;
 int win_skip (char*) ;

__attribute__((used)) static BOOL init_access_tests(void)
{
    DWORD dwSize;
    BOOL rc;

    user_name[0] = 0;
    dwSize = ARRAY_SIZE(user_name);
    rc=GetUserNameW(user_name, &dwSize);
    if (rc==FALSE && GetLastError()==ERROR_CALL_NOT_IMPLEMENTED)
    {
        win_skip("GetUserNameW is not available.\n");
        return FALSE;
    }
    ok(rc, "User Name Retrieved\n");

    computer_name[0] = 0;
    dwSize = ARRAY_SIZE(computer_name);
    ok(GetComputerNameW(computer_name, &dwSize), "Computer Name Retrieved\n");
    return TRUE;
}
