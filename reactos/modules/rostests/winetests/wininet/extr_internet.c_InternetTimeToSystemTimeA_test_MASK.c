#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  expect ;
struct TYPE_5__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int /*<<< orphan*/  member_7; } ;
typedef  TYPE_1__ SYSTEMTIME ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
    BOOL ret;
    SYSTEMTIME time;
    static const SYSTEMTIME expect = { 2005, 1, 5, 7, 12, 6, 35, 0 };
    static const char string[] = "Fri, 07 Jan 2005 12:06:35 GMT";
    static const char string2[] = " fri 7 jan 2005 12 06 35";

    ret = FUNC3( string, &time, 0 );
    FUNC2( ret, "InternetTimeToSystemTimeA failed (%u)\n", FUNC0() );
    FUNC2( !FUNC1( &time, &expect, sizeof(expect) ),
        "InternetTimeToSystemTimeA failed (%u)\n", FUNC0() );

    ret = FUNC3( string2, &time, 0 );
    FUNC2( ret, "InternetTimeToSystemTimeA failed (%u)\n", FUNC0() );
    FUNC2( !FUNC1( &time, &expect, sizeof(expect) ),
        "InternetTimeToSystemTimeA failed (%u)\n", FUNC0() );
}