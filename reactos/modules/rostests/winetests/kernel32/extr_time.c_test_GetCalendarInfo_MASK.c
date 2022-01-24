#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  val2 ;
typedef  int /*<<< orphan*/  val1 ;
typedef  int /*<<< orphan*/  bufferW ;
typedef  int /*<<< orphan*/  bufferA ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CAL_GREGORIAN ; 
 int CAL_ITWODIGITYEARMAX ; 
 int CAL_RETURN_NUMBER ; 
 int CAL_SDAYNAME1 ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int LANG_SYSTEM_DEFAULT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int,char*,int,int*) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    char bufferA[20];
    WCHAR bufferW[20];
    DWORD val1, val2;
    int ret, ret2;

    if (!&pGetCalendarInfoA || !&pGetCalendarInfoW)
    {
        FUNC7( "GetCalendarInfo missing\n" );
        return;
    }

    ret = FUNC5( 0x0409, CAL_GREGORIAN, CAL_ITWODIGITYEARMAX | CAL_RETURN_NUMBER,
                             NULL, 0, &val1 );
    FUNC4( ret, "GetCalendarInfoA failed err %u\n", FUNC0() );
    FUNC4( ret == sizeof(val1), "wrong size %u\n", ret );
    FUNC4( val1 >= 2000 && val1 < 2100, "wrong value %u\n", val1 );

    ret = FUNC6( 0x0409, CAL_GREGORIAN, CAL_ITWODIGITYEARMAX | CAL_RETURN_NUMBER,
                             NULL, 0, &val2 );
    FUNC4( ret, "GetCalendarInfoW failed err %u\n", FUNC0() );
    FUNC4( ret == sizeof(val2)/sizeof(WCHAR), "wrong size %u\n", ret );
    FUNC4( val1 == val2, "A/W mismatch %u/%u\n", val1, val2 );

    ret = FUNC5( 0x0409, CAL_GREGORIAN, CAL_ITWODIGITYEARMAX, bufferA, sizeof(bufferA), NULL );
    FUNC4( ret, "GetCalendarInfoA failed err %u\n", FUNC0() );
    FUNC4( ret == 5, "wrong size %u\n", ret );
    FUNC4( FUNC2( bufferA ) == val1, "wrong value %s/%u\n", bufferA, val1 );

    ret = FUNC6( 0x0409, CAL_GREGORIAN, CAL_ITWODIGITYEARMAX, bufferW, sizeof(bufferW), NULL );
    FUNC4( ret, "GetCalendarInfoW failed err %u\n", FUNC0() );
    FUNC4( ret == 5, "wrong size %u\n", ret );
    FUNC3( bufferA, 0x55, sizeof(bufferA) );
    FUNC1( CP_ACP, 0, bufferW, -1, bufferA, sizeof(bufferA), NULL, NULL );
    FUNC4( FUNC2( bufferA ) == val1, "wrong value %s/%u\n", bufferA, val1 );

    ret = FUNC5( 0x0409, CAL_GREGORIAN, CAL_ITWODIGITYEARMAX | CAL_RETURN_NUMBER,
                             NULL, 0, NULL );
    FUNC4( !ret, "GetCalendarInfoA succeeded\n" );
    FUNC4( FUNC0() == ERROR_INVALID_PARAMETER, "wrong error %u\n", FUNC0() );

    ret = FUNC5( 0x0409, CAL_GREGORIAN, CAL_ITWODIGITYEARMAX, NULL, 0, NULL );
    FUNC4( ret, "GetCalendarInfoA failed err %u\n", FUNC0() );
    FUNC4( ret == 5, "wrong size %u\n", ret );

    ret = FUNC6( 0x0409, CAL_GREGORIAN, CAL_ITWODIGITYEARMAX | CAL_RETURN_NUMBER,
                             NULL, 0, NULL );
    FUNC4( !ret, "GetCalendarInfoW succeeded\n" );
    FUNC4( FUNC0() == ERROR_INVALID_PARAMETER, "wrong error %u\n", FUNC0() );

    ret = FUNC6( 0x0409, CAL_GREGORIAN, CAL_ITWODIGITYEARMAX, NULL, 0, NULL );
    FUNC4( ret, "GetCalendarInfoW failed err %u\n", FUNC0() );
    FUNC4( ret == 5, "wrong size %u\n", ret );

    ret = FUNC5( LANG_SYSTEM_DEFAULT, CAL_GREGORIAN, CAL_SDAYNAME1,
                             bufferA, sizeof(bufferA), NULL);
    FUNC4( ret, "GetCalendarInfoA failed err %u\n", FUNC0() );
    ret2 = FUNC5( LANG_SYSTEM_DEFAULT, CAL_GREGORIAN, CAL_SDAYNAME1,
                              bufferA, 0, NULL);
    FUNC4( ret2, "GetCalendarInfoA failed err %u\n", FUNC0() );
    FUNC4( ret == ret2, "got %d, expected %d\n", ret2, ret );

    ret2 = FUNC6( LANG_SYSTEM_DEFAULT, CAL_GREGORIAN, CAL_SDAYNAME1,
                              bufferW, sizeof(bufferW), NULL);
    FUNC4( ret2, "GetCalendarInfoW failed err %u\n", FUNC0() );
    ret2 = FUNC1( CP_ACP, 0, bufferW, -1, NULL, 0, NULL, NULL );
    FUNC4( ret == ret2, "got %d, expected %d\n", ret, ret2 );
}