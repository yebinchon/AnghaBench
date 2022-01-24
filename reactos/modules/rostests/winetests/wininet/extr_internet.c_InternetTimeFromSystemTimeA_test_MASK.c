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
typedef  int /*<<< orphan*/  string ;
typedef  int /*<<< orphan*/  expect ;
struct TYPE_3__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int /*<<< orphan*/  member_7; } ;
typedef  TYPE_1__ SYSTEMTIME ;
typedef  scalar_t__ DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 () ; 
 int INTERNET_RFC1123_BUFSIZE ; 
 scalar_t__ INTERNET_RFC1123_FORMAT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int FUNC4 (TYPE_1__ const*,scalar_t__,char*,int) ; 

__attribute__((used)) static void FUNC5(void)
{
    BOOL ret;
    static const SYSTEMTIME time = { 2005, 1, 5, 7, 12, 6, 35, 0 };
    char string[INTERNET_RFC1123_BUFSIZE];
    static const char expect[] = "Fri, 07 Jan 2005 12:06:35 GMT";
    DWORD error;

    ret = FUNC4( &time, INTERNET_RFC1123_FORMAT, string, sizeof(string) );
    FUNC3( ret, "InternetTimeFromSystemTimeA failed (%u)\n", FUNC0() );

    FUNC3( !FUNC2( string, expect, sizeof(expect) ),
        "InternetTimeFromSystemTimeA failed (%u)\n", FUNC0() );

    /* test NULL time parameter */
    FUNC1(0xdeadbeef);
    ret = FUNC4( NULL, INTERNET_RFC1123_FORMAT, string, sizeof(string) );
    error = FUNC0();
    FUNC3( !ret, "InternetTimeFromSystemTimeA should have returned FALSE\n" );
    FUNC3( error == ERROR_INVALID_PARAMETER,
        "InternetTimeFromSystemTimeA failed with ERROR_INVALID_PARAMETER instead of %u\n",
        error );

    /* test NULL string parameter */
    FUNC1(0xdeadbeef);
    ret = FUNC4( &time, INTERNET_RFC1123_FORMAT, NULL, sizeof(string) );
    error = FUNC0();
    FUNC3( !ret, "InternetTimeFromSystemTimeA should have returned FALSE\n" );
    FUNC3( error == ERROR_INVALID_PARAMETER,
        "InternetTimeFromSystemTimeA failed with ERROR_INVALID_PARAMETER instead of %u\n",
        error );

    /* test invalid format parameter */
    FUNC1(0xdeadbeef);
    ret = FUNC4( &time, INTERNET_RFC1123_FORMAT + 1, string, sizeof(string) );
    error = FUNC0();
    FUNC3( !ret, "InternetTimeFromSystemTimeA should have returned FALSE\n" );
    FUNC3( error == ERROR_INVALID_PARAMETER,
        "InternetTimeFromSystemTimeA failed with ERROR_INVALID_PARAMETER instead of %u\n",
        error );

    /* test too small buffer size */
    FUNC1(0xdeadbeef);
    ret = FUNC4( &time, INTERNET_RFC1123_FORMAT, string, 0 );
    error = FUNC0();
    FUNC3( !ret, "InternetTimeFromSystemTimeA should have returned FALSE\n" );
    FUNC3( error == ERROR_INSUFFICIENT_BUFFER,
        "InternetTimeFromSystemTimeA failed with ERROR_INSUFFICIENT_BUFFER instead of %u\n",
        error );
}