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
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  char CHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/ * machine ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11( char *testprofile )
{
    BOOL ret;

    /* Parameter checks */

    ret = FUNC9( NULL, NULL, FALSE );
    FUNC6( !ret, "UninstallColorProfileA() succeeded (%d)\n", FUNC2() );

    ret = FUNC9( machine, NULL, FALSE );
    FUNC6( !ret, "UninstallColorProfileA() succeeded (%d)\n", FUNC2() );

    /* Functional checks */

    if (testprofile)
    {
        CHAR dest[MAX_PATH], base[MAX_PATH];
        DWORD size = sizeof(dest);
        CHAR slash[] = "\\";
        HANDLE handle;

        FUNC4(0xdeadbeef);
        ret = FUNC8( NULL, testprofile );
        if (!ret && (FUNC2() == ERROR_ACCESS_DENIED))
        {
            FUNC10("Not enough rights for InstallColorProfileA\n");
            return;
        }
        FUNC6( ret, "InstallColorProfileA() failed (%d)\n", FUNC2() );

        ret = FUNC7( NULL, dest, &size );
        FUNC6( ret, "GetColorDirectoryA() failed (%d)\n", FUNC2() );

        FUNC3( testprofile, base );

        FUNC5( dest, slash );
        FUNC5( dest, base );

        ret = FUNC9( NULL, dest, TRUE );
        FUNC6( ret, "UninstallColorProfileA() failed (%d)\n", FUNC2() );

        /* Check if the profile is really gone */
        handle = FUNC1( dest, 0 , 0, NULL, OPEN_EXISTING, 0, NULL );
        FUNC6( handle == INVALID_HANDLE_VALUE, "Found the profile (%d)\n", FUNC2() );
        FUNC0( handle );
    }
}