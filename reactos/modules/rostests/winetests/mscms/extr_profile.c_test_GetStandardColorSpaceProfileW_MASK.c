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
typedef  int /*<<< orphan*/  newprofileA ;
typedef  int /*<<< orphan*/  newprofile ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * machineW ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9( WCHAR *standardprofileW )
{
    BOOL ret;
    DWORD size;
    WCHAR oldprofile[MAX_PATH];
    WCHAR newprofile[MAX_PATH];
    CHAR newprofileA[MAX_PATH];

    /* Parameter checks */

    /* Single invalid parameter checks: */

    size = sizeof(newprofile);
    FUNC1(0xfaceabee); /* 1st param, */
    ret = FUNC6(machineW, LCS_sRGB, newprofile, &size);
    FUNC5( !ret && FUNC0() == ERROR_NOT_SUPPORTED, "GetStandardColorSpaceProfileW() returns %d (GLE=%d)\n", ret, FUNC0() );

    size = sizeof(newprofile);
    FUNC1(0xfaceabee); /* 2nd param, */
    ret = FUNC6(NULL, (DWORD)-1, newprofile, &size);
    FUNC5( !ret && FUNC0() == ERROR_FILE_NOT_FOUND, "GetStandardColorSpaceProfileW() returns %d (GLE=%d)\n", ret, FUNC0() );

    size = sizeof(newprofile);
    FUNC1(0xfaceabee); /* 2nd param, */
    ret = FUNC6(NULL, 0, newprofile, &size);
    FUNC5( (!ret && FUNC0() == ERROR_FILE_NOT_FOUND) ||
        FUNC3(ret), /* Win98 and WinME */
        "GetStandardColorSpaceProfileW() returns %d (GLE=%d)\n", ret, FUNC0() );

    size = sizeof(newprofile);
    FUNC1(0xfaceabee); /* 3rd param, */
    ret = FUNC6(NULL, LCS_sRGB, NULL, &size);
    FUNC5( !ret || FUNC3(ret) /* win98 */, "GetStandardColorSpaceProfileW succeeded\n" );
    FUNC5( FUNC0() == ERROR_INSUFFICIENT_BUFFER ||
        FUNC3(FUNC0() == 0xfaceabee) /* win98 */,
        "GetStandardColorSpaceProfileW() returns GLE=%u\n", FUNC0() );

    size = sizeof(newprofile);
    FUNC1(0xfaceabee); /* 4th param, */
    ret = FUNC6(NULL, LCS_sRGB, newprofile, NULL);
    FUNC5( !ret && FUNC0() == ERROR_INVALID_PARAMETER, "GetStandardColorSpaceProfileW() returns %d (GLE=%d)\n", ret, FUNC0() );

    size = 0;
    FUNC1(0xfaceabee); /* dereferenced 4th param. */
    ret = FUNC6(NULL, LCS_sRGB, newprofile, &size);
    FUNC5( !ret || FUNC3(ret) /* win98 */, "GetStandardColorSpaceProfileW succeeded\n" );
    FUNC5( FUNC0() == ERROR_MORE_DATA ||
        FUNC0() == ERROR_INSUFFICIENT_BUFFER ||
        FUNC3(FUNC0() == 0xfaceabee) /* win98 */,
        "GetStandardColorSpaceProfileW() returns GLE=%u\n", FUNC0() );

    /* Several invalid parameter checks: */

    size = 0;
    FUNC1(0xfaceabee); /* 1st, maybe 2nd and then dereferenced 4th param, */
    ret = FUNC6(machineW, 0, newprofile, &size);
    FUNC5( !ret && (FUNC0() == ERROR_INVALID_PARAMETER || FUNC0() == ERROR_NOT_SUPPORTED),
        "GetStandardColorSpaceProfileW() returns %d (GLE=%d)\n", ret, FUNC0() );

    FUNC1(0xfaceabee); /* maybe 2nd and then 4th param, */
    ret = FUNC6(NULL, 0, newprofile, NULL);
    FUNC5( !ret && FUNC0() == ERROR_INVALID_PARAMETER, "GetStandardColorSpaceProfileW() returns %d (GLE=%d)\n", ret, FUNC0() );

    size = 0;
    FUNC1(0xfaceabee); /* maybe 2nd, then 3rd and dereferenced 4th param, */
    ret = FUNC6(NULL, 0, NULL, &size);
    FUNC5( !ret || FUNC3(ret) /* win98 */, "GetStandardColorSpaceProfileW succeeded\n" );
    FUNC5( FUNC0() == ERROR_INSUFFICIENT_BUFFER ||
        FUNC0() == ERROR_FILE_NOT_FOUND ||
        FUNC3(FUNC0() == 0xfaceabee) /* win98 */,
        "GetStandardColorSpaceProfileW() returns GLE=%u\n", FUNC0() );

    size = sizeof(newprofile);
    FUNC1(0xfaceabee); /* maybe 2nd param. */
    ret = FUNC6(NULL, 0, newprofile, &size);
    if (!ret) FUNC5( FUNC0() == ERROR_FILE_NOT_FOUND, "GetStandardColorSpaceProfileW() returns %d (GLE=%d)\n", ret, FUNC0() );
    else
    {
        FUNC2(CP_ACP, 0, newprofile, -1, newprofileA, sizeof(newprofileA), NULL, NULL);
        FUNC5( !FUNC4( newprofileA, "" ) && FUNC0() == 0xfaceabee,
             "GetStandardColorSpaceProfileW() returns %d (GLE=%d)\n", ret, FUNC0() );
    }

    /* Functional checks */

    size = sizeof(oldprofile);
    ret = FUNC6( NULL, LCS_sRGB, oldprofile, &size );
    FUNC5( ret, "GetStandardColorSpaceProfileW() failed (%d)\n", FUNC0() );

    FUNC1(0xdeadbeef);
    ret = FUNC7( NULL, LCS_sRGB, standardprofileW );
    if (!ret && (FUNC0() == ERROR_ACCESS_DENIED))
    {
        FUNC8("Not enough rights for SetStandardColorSpaceProfileW\n");
        return;
    }
    FUNC5( ret, "SetStandardColorSpaceProfileW() failed (%d)\n", FUNC0() );

    size = sizeof(newprofile);
    ret = FUNC6( NULL, LCS_sRGB, newprofile, &size );
    FUNC5( ret, "GetStandardColorSpaceProfileW() failed (%d)\n", FUNC0() );

    ret = FUNC7( NULL, LCS_sRGB, oldprofile );
    FUNC5( ret, "SetStandardColorSpaceProfileW() failed (%d)\n", FUNC0() );
}