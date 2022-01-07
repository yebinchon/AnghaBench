
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val2 ;
typedef int val1 ;
typedef int bufferW ;
typedef int bufferA ;
typedef int WCHAR ;
typedef int DWORD ;


 int CAL_GREGORIAN ;
 int CAL_ITWODIGITYEARMAX ;
 int CAL_RETURN_NUMBER ;
 int CAL_SDAYNAME1 ;
 int CP_ACP ;
 int ERROR_INVALID_PARAMETER ;
 int GetLastError () ;
 int LANG_SYSTEM_DEFAULT ;
 int WideCharToMultiByte (int ,int ,int *,int,char*,int,int *,int *) ;
 int atoi (char*) ;
 int memset (char*,int,int) ;
 int ok (int,char*,...) ;
 int pGetCalendarInfoA (int,int ,int,char*,int,int*) ;
 int pGetCalendarInfoW (int,int ,int,int *,int,int*) ;
 int trace (char*) ;

__attribute__((used)) static void test_GetCalendarInfo(void)
{
    char bufferA[20];
    WCHAR bufferW[20];
    DWORD val1, val2;
    int ret, ret2;

    if (!pGetCalendarInfoA || !pGetCalendarInfoW)
    {
        trace( "GetCalendarInfo missing\n" );
        return;
    }

    ret = pGetCalendarInfoA( 0x0409, CAL_GREGORIAN, CAL_ITWODIGITYEARMAX | CAL_RETURN_NUMBER,
                             ((void*)0), 0, &val1 );
    ok( ret, "GetCalendarInfoA failed err %u\n", GetLastError() );
    ok( ret == sizeof(val1), "wrong size %u\n", ret );
    ok( val1 >= 2000 && val1 < 2100, "wrong value %u\n", val1 );

    ret = pGetCalendarInfoW( 0x0409, CAL_GREGORIAN, CAL_ITWODIGITYEARMAX | CAL_RETURN_NUMBER,
                             ((void*)0), 0, &val2 );
    ok( ret, "GetCalendarInfoW failed err %u\n", GetLastError() );
    ok( ret == sizeof(val2)/sizeof(WCHAR), "wrong size %u\n", ret );
    ok( val1 == val2, "A/W mismatch %u/%u\n", val1, val2 );

    ret = pGetCalendarInfoA( 0x0409, CAL_GREGORIAN, CAL_ITWODIGITYEARMAX, bufferA, sizeof(bufferA), ((void*)0) );
    ok( ret, "GetCalendarInfoA failed err %u\n", GetLastError() );
    ok( ret == 5, "wrong size %u\n", ret );
    ok( atoi( bufferA ) == val1, "wrong value %s/%u\n", bufferA, val1 );

    ret = pGetCalendarInfoW( 0x0409, CAL_GREGORIAN, CAL_ITWODIGITYEARMAX, bufferW, sizeof(bufferW), ((void*)0) );
    ok( ret, "GetCalendarInfoW failed err %u\n", GetLastError() );
    ok( ret == 5, "wrong size %u\n", ret );
    memset( bufferA, 0x55, sizeof(bufferA) );
    WideCharToMultiByte( CP_ACP, 0, bufferW, -1, bufferA, sizeof(bufferA), ((void*)0), ((void*)0) );
    ok( atoi( bufferA ) == val1, "wrong value %s/%u\n", bufferA, val1 );

    ret = pGetCalendarInfoA( 0x0409, CAL_GREGORIAN, CAL_ITWODIGITYEARMAX | CAL_RETURN_NUMBER,
                             ((void*)0), 0, ((void*)0) );
    ok( !ret, "GetCalendarInfoA succeeded\n" );
    ok( GetLastError() == ERROR_INVALID_PARAMETER, "wrong error %u\n", GetLastError() );

    ret = pGetCalendarInfoA( 0x0409, CAL_GREGORIAN, CAL_ITWODIGITYEARMAX, ((void*)0), 0, ((void*)0) );
    ok( ret, "GetCalendarInfoA failed err %u\n", GetLastError() );
    ok( ret == 5, "wrong size %u\n", ret );

    ret = pGetCalendarInfoW( 0x0409, CAL_GREGORIAN, CAL_ITWODIGITYEARMAX | CAL_RETURN_NUMBER,
                             ((void*)0), 0, ((void*)0) );
    ok( !ret, "GetCalendarInfoW succeeded\n" );
    ok( GetLastError() == ERROR_INVALID_PARAMETER, "wrong error %u\n", GetLastError() );

    ret = pGetCalendarInfoW( 0x0409, CAL_GREGORIAN, CAL_ITWODIGITYEARMAX, ((void*)0), 0, ((void*)0) );
    ok( ret, "GetCalendarInfoW failed err %u\n", GetLastError() );
    ok( ret == 5, "wrong size %u\n", ret );

    ret = pGetCalendarInfoA( LANG_SYSTEM_DEFAULT, CAL_GREGORIAN, CAL_SDAYNAME1,
                             bufferA, sizeof(bufferA), ((void*)0));
    ok( ret, "GetCalendarInfoA failed err %u\n", GetLastError() );
    ret2 = pGetCalendarInfoA( LANG_SYSTEM_DEFAULT, CAL_GREGORIAN, CAL_SDAYNAME1,
                              bufferA, 0, ((void*)0));
    ok( ret2, "GetCalendarInfoA failed err %u\n", GetLastError() );
    ok( ret == ret2, "got %d, expected %d\n", ret2, ret );

    ret2 = pGetCalendarInfoW( LANG_SYSTEM_DEFAULT, CAL_GREGORIAN, CAL_SDAYNAME1,
                              bufferW, sizeof(bufferW), ((void*)0));
    ok( ret2, "GetCalendarInfoW failed err %u\n", GetLastError() );
    ret2 = WideCharToMultiByte( CP_ACP, 0, bufferW, -1, ((void*)0), 0, ((void*)0), ((void*)0) );
    ok( ret == ret2, "got %d, expected %d\n", ret, ret2 );
}
