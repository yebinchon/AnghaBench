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
typedef  int /*<<< orphan*/  dest ;
typedef  char WCHAR ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 char* machineW ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC8 (char*,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11( WCHAR *standardprofileW, WCHAR *testprofileW )
{
    BOOL ret;

    /* Parameter checks */

    ret = FUNC8( NULL, NULL );
    FUNC6( !ret, "InstallColorProfileW() succeeded (%d)\n", FUNC2() );

    ret = FUNC8( machineW, NULL );
    FUNC6( !ret, "InstallColorProfileW() succeeded (%d)\n", FUNC2() );

    ret = FUNC8( NULL, machineW );
    FUNC6( !ret, "InstallColorProfileW() failed (%d)\n", FUNC2() );

    if (standardprofileW)
    {
        ret = FUNC8( NULL, standardprofileW );
        FUNC6( ret, "InstallColorProfileW() failed (%d)\n", FUNC2() );
    }

    /* Functional checks */

    if (testprofileW)
    {
        WCHAR dest[MAX_PATH], base[MAX_PATH];
        DWORD size = sizeof(dest);
        WCHAR slash[] = { '\\', 0 };
        HANDLE handle;

        FUNC4(0xdeadbeef);
        ret = FUNC8( NULL, testprofileW );
        if (!ret && (FUNC2() == ERROR_ACCESS_DENIED))
        {
            FUNC10("Not enough rights for InstallColorProfileW\n");
            return;
        }
        FUNC6( ret, "InstallColorProfileW() failed (%d)\n", FUNC2() );

        ret = FUNC7( NULL, dest, &size );
        FUNC6( ret, "GetColorDirectoryW() failed (%d)\n", FUNC2() );

        FUNC3( testprofileW, base );

        FUNC5( dest, slash );
        FUNC5( dest, base );

        /* Check if the profile is really there */
        handle = FUNC1( dest, 0 , 0, NULL, OPEN_EXISTING, 0, NULL );
        FUNC6( handle != INVALID_HANDLE_VALUE, "Couldn't find the profile (%d)\n", FUNC2() );
        FUNC0( handle );

        ret = FUNC9( NULL, dest, TRUE );
        FUNC6( ret, "UninstallColorProfileW() failed (%d)\n", FUNC2() );
    }
}