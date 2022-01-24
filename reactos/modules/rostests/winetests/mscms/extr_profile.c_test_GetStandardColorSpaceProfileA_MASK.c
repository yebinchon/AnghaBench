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
typedef  int /*<<< orphan*/  oldprofile ;
typedef  int /*<<< orphan*/  newprofile ;
typedef  int DWORD ;
typedef  char CHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int ERROR_ACCESS_DENIED ; 
 int ERROR_FILE_NOT_FOUND ; 
 int ERROR_INSUFFICIENT_BUFFER ; 
 int ERROR_INVALID_PARAMETER ; 
 int ERROR_MORE_DATA ; 
 int ERROR_NOT_SUPPORTED ; 
 int FUNC0 () ; 
 int LCS_sRGB ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * machine ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7( char *standardprofile )
{
    BOOL ret;
    DWORD size;
    CHAR oldprofile[MAX_PATH];
    CHAR newprofile[MAX_PATH];

    /* Parameter checks */

    /* Single invalid parameter checks: */

    size = sizeof(newprofile);
    FUNC1(0xfaceabee); /* 1st param, */
    ret = FUNC4(machine, LCS_sRGB, newprofile, &size);
    FUNC3( !ret && FUNC0() == ERROR_NOT_SUPPORTED, "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, FUNC0() );

    size = sizeof(newprofile);
    FUNC1(0xfaceabee); /* 2nd param, */
    ret = FUNC4(NULL, (DWORD)-1, newprofile, &size);
    FUNC3( !ret && FUNC0() == ERROR_FILE_NOT_FOUND, "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, FUNC0() );

    size = sizeof(newprofile);
    FUNC1(0xfaceabee); /* 4th param, */
    ret = FUNC4(NULL, LCS_sRGB, newprofile, NULL);
    FUNC3( !ret && FUNC0() == ERROR_INVALID_PARAMETER, "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, FUNC0() );

    size = sizeof(newprofile);
    FUNC1(0xfaceabee); /* 3rd param, */
    ret = FUNC4(NULL, LCS_sRGB, NULL, &size);
    FUNC3( !ret && FUNC0() == ERROR_INSUFFICIENT_BUFFER, "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, FUNC0() );

    size = 0;
    FUNC1(0xfaceabee); /* dereferenced 4th param, */
    ret = FUNC4(NULL, LCS_sRGB, newprofile, &size);
    FUNC3( !ret && (FUNC0() == ERROR_MORE_DATA || FUNC0() == ERROR_INSUFFICIENT_BUFFER),
        "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, FUNC0() );

    /* Several invalid parameter checks: */

    size = 0;
    FUNC1(0xfaceabee); /* 1st, maybe 2nd and then dereferenced 4th param, */
    ret = FUNC4(machine, 0, newprofile, &size);
    FUNC3( !ret && (FUNC0() == ERROR_INVALID_PARAMETER || FUNC0() == ERROR_NOT_SUPPORTED),
        "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, FUNC0() );

    FUNC1(0xfaceabee); /* maybe 2nd and then 4th param, */
    ret = FUNC4(NULL, 0, newprofile, NULL);
    FUNC3( !ret && FUNC0() == ERROR_INVALID_PARAMETER, "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, FUNC0() );

    size = 0;
    FUNC1(0xfaceabee); /* maybe 2nd, then 3rd and dereferenced 4th param, */
    ret = FUNC4(NULL, 0, NULL, &size);
    FUNC3( !ret && (FUNC0() == ERROR_INSUFFICIENT_BUFFER || FUNC0() == ERROR_FILE_NOT_FOUND),
        "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, FUNC0() );

    size = sizeof(newprofile);
    FUNC1(0xfaceabee); /* maybe 2nd param. */
    ret = FUNC4(NULL, 0, newprofile, &size);
    if (!ret) FUNC3( FUNC0() == ERROR_FILE_NOT_FOUND, "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, FUNC0() );
    else FUNC3( !FUNC2( newprofile, "" ) && FUNC0() == 0xfaceabee,
             "GetStandardColorSpaceProfileA() returns %d (GLE=%d)\n", ret, FUNC0() );

    /* Functional checks */

    size = sizeof(oldprofile);
    ret = FUNC4( NULL, LCS_sRGB, oldprofile, &size );
    FUNC3( ret, "GetStandardColorSpaceProfileA() failed (%d)\n", FUNC0() );

    FUNC1(0xdeadbeef);
    ret = FUNC5( NULL, LCS_sRGB, standardprofile );
    if (!ret && (FUNC0() == ERROR_ACCESS_DENIED))
    {
        FUNC6("Not enough rights for SetStandardColorSpaceProfileA\n");
        return;
    }
    FUNC3( ret, "SetStandardColorSpaceProfileA() failed (%d)\n", FUNC0() );

    size = sizeof(newprofile);
    ret = FUNC4( NULL, LCS_sRGB, newprofile, &size );
    FUNC3( ret, "GetStandardColorSpaceProfileA() failed (%d)\n", FUNC0() );

    ret = FUNC5( NULL, LCS_sRGB, oldprofile );
    FUNC3( ret, "SetStandardColorSpaceProfileA() failed (%d)\n", FUNC0() );
}