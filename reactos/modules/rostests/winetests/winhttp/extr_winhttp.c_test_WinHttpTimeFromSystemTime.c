
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int expected_string ;
typedef char WCHAR ;
struct TYPE_3__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int GetLastError () ;
 int SetLastError (int) ;
 int WINHTTP_TIME_FORMAT_BUFSIZE ;
 int WinHttpTimeFromSystemTime (TYPE_1__ const*,char*) ;
 scalar_t__ broken (int) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_WinHttpTimeFromSystemTime(void)
{
    BOOL ret;
    static const SYSTEMTIME time = {2008, 7, 1, 28, 10, 5, 52, 0};
    static const WCHAR expected_string[] =
        {'M','o','n',',',' ','2','8',' ','J','u','l',' ','2','0','0','8',' ',
         '1','0',':','0','5',':','5','2',' ','G','M','T',0};
    WCHAR time_string[WINHTTP_TIME_FORMAT_BUFSIZE+1];
    DWORD err;

    SetLastError(0xdeadbeef);
    ret = WinHttpTimeFromSystemTime(&time, ((void*)0));
    err = GetLastError();
    ok(!ret, "WinHttpTimeFromSystemTime succeeded\n");
    ok(err == ERROR_INVALID_PARAMETER, "got %u\n", err);

    SetLastError(0xdeadbeef);
    ret = WinHttpTimeFromSystemTime(((void*)0), time_string);
    err = GetLastError();
    ok(!ret, "WinHttpTimeFromSystemTime succeeded\n");
    ok(err == ERROR_INVALID_PARAMETER, "got %u\n", err);

    SetLastError(0xdeadbeef);
    ret = WinHttpTimeFromSystemTime(&time, time_string);
    err = GetLastError();
    ok(ret, "WinHttpTimeFromSystemTime failed: %u\n", err);
    ok(err == ERROR_SUCCESS || broken(err == 0xdeadbeef) , "got %u\n", err);
    ok(memcmp(time_string, expected_string, sizeof(expected_string)) == 0,
        "Time string returned did not match expected time string.\n");
}
