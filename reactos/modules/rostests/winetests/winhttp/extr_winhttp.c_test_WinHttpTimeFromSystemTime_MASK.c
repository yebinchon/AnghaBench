#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  expected_string ;
typedef  char WCHAR ;
struct TYPE_3__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int /*<<< orphan*/  member_7; } ;
typedef  TYPE_1__ SYSTEMTIME ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_SUCCESS ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  WINHTTP_TIME_FORMAT_BUFSIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,char*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 

__attribute__((used)) static void FUNC6(void)
{
    BOOL ret;
    static const SYSTEMTIME time = {2008, 7, 1, 28, 10, 5, 52, 0};
    static const WCHAR expected_string[] =
        {'M','o','n',',',' ','2','8',' ','J','u','l',' ','2','0','0','8',' ',
         '1','0',':','0','5',':','5','2',' ','G','M','T',0};
    WCHAR time_string[WINHTTP_TIME_FORMAT_BUFSIZE+1];
    DWORD err;

    FUNC1(0xdeadbeef);
    ret = FUNC2(&time, NULL);
    err = FUNC0();
    FUNC5(!ret, "WinHttpTimeFromSystemTime succeeded\n");
    FUNC5(err == ERROR_INVALID_PARAMETER, "got %u\n", err);

    FUNC1(0xdeadbeef);
    ret = FUNC2(NULL, time_string);
    err = FUNC0();
    FUNC5(!ret, "WinHttpTimeFromSystemTime succeeded\n");
    FUNC5(err == ERROR_INVALID_PARAMETER, "got %u\n", err);

    FUNC1(0xdeadbeef);
    ret = FUNC2(&time, time_string);
    err = FUNC0();
    FUNC5(ret, "WinHttpTimeFromSystemTime failed: %u\n", err);
    FUNC5(err == ERROR_SUCCESS || FUNC3(err == 0xdeadbeef) /* < win7 */, "got %u\n", err);
    FUNC5(FUNC4(time_string, expected_string, sizeof(expected_string)) == 0,
        "Time string returned did not match expected time string.\n");
}