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
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC2 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/ * machineW ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12( WCHAR *testprofileW )
{
    BOOL ret;

    /* Parameter checks */

    ret = FUNC10( NULL, NULL, FALSE );
    FUNC7( !ret, "UninstallColorProfileW() succeeded (%d)\n", FUNC2() );

    ret = FUNC10( machineW, NULL, FALSE );
    FUNC7( !ret, "UninstallColorProfileW() succeeded (%d)\n", FUNC2() );

    /* Functional checks */

    if (testprofileW)
    {
        WCHAR dest[MAX_PATH], base[MAX_PATH];
        char destA[MAX_PATH];
        DWORD size = sizeof(dest);
        WCHAR slash[] = { '\\', 0 };
        HANDLE handle;
        int bytes_copied;

        FUNC4(0xdeadbeef);
        ret = FUNC9( NULL, testprofileW );
        if (!ret && (FUNC2() == ERROR_ACCESS_DENIED))
        {
            FUNC11("Not enough rights for InstallColorProfileW\n");
            return;
        }
        FUNC7( ret, "InstallColorProfileW() failed (%d)\n", FUNC2() );

        ret = FUNC8( NULL, dest, &size );
        FUNC7( ret, "GetColorDirectoryW() failed (%d)\n", FUNC2() );

        FUNC3( testprofileW, base );

        FUNC6( dest, slash );
        FUNC6( dest, base );

        ret = FUNC10( NULL, dest, TRUE );
        FUNC7( ret, "UninstallColorProfileW() failed (%d)\n", FUNC2() );

        bytes_copied = FUNC5(CP_ACP, 0, dest, -1, destA, MAX_PATH, NULL, NULL);
        FUNC7( bytes_copied > 0 , "WideCharToMultiByte() returns %d\n", bytes_copied);
        /* Check if the profile is really gone */
        handle = FUNC1( destA, 0 , 0, NULL, OPEN_EXISTING, 0, NULL );
        FUNC7( handle == INVALID_HANDLE_VALUE, "Found the profile (%d)\n", FUNC2() );
        FUNC0( handle );
    }
}