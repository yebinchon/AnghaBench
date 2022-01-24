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
typedef  int /*<<< orphan*/  profile ;
struct TYPE_3__ {int cb; int /*<<< orphan*/ * DeviceID; int /*<<< orphan*/ * DeviceName; } ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ DISPLAY_DEVICEA ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_NOT_SUPPORTED ; 
 scalar_t__ FUNC0 () ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int FUNC5 (char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12( char *testprofile )
{
    BOOL ret;
    char profile[MAX_PATH], basename[MAX_PATH];
    DWORD error, size = sizeof(profile);
    DISPLAY_DEVICEA display, monitor;
    BOOL res;

    if (testprofile && &pEnumDisplayDevicesA)
    {
        display.cb = sizeof( DISPLAY_DEVICEA );
        res = FUNC7( NULL, 0, &display, 0 );
        FUNC4( res, "Can't get display info\n" );

        monitor.cb = sizeof( DISPLAY_DEVICEA );
        res = FUNC7( display.DeviceName, 0, &monitor, 0 );
        if (res)
        {
            FUNC2(0xdeadbeef);
            ret = FUNC5( "machine", testprofile, NULL );
            error = FUNC0();
            FUNC4( !ret, "AssociateColorProfileWithDevice() succeeded\n" );
            FUNC4( error == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %u\n", error );

            FUNC2(0xdeadbeef);
            ret = FUNC5( "machine", NULL, monitor.DeviceID );
            error = FUNC0();
            FUNC4( !ret, "AssociateColorProfileWithDevice() succeeded\n" );
            FUNC4( error == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %u\n", error );

            FUNC2(0xdeadbeef);
            ret = FUNC5( "machine", testprofile, monitor.DeviceID );
            error = FUNC0();
            FUNC4( !ret, "AssociateColorProfileWithDevice() succeeded\n" );
            FUNC4( error == ERROR_NOT_SUPPORTED, "expected ERROR_NOT_SUPPORTED, got %u\n", error );

            ret = FUNC9( NULL, testprofile );
            FUNC4( ret, "InstallColorProfileA() failed (%u)\n", FUNC0() );

            ret = FUNC8( NULL, profile, &size );
            FUNC4( ret, "GetColorDirectoryA() failed (%d)\n", FUNC0() );

            FUNC1( testprofile, basename );
            FUNC3( profile, "\\" );
            FUNC3( profile, basename );

            ret = FUNC5( NULL, profile, monitor.DeviceID );
            FUNC4( ret, "AssociateColorProfileWithDevice() failed (%u)\n", FUNC0() );

            FUNC2(0xdeadbeef);
            ret = FUNC6( "machine", profile, NULL );
            error = FUNC0();
            FUNC4( !ret, "DisassociateColorProfileFromDeviceA() succeeded\n" );
            FUNC4( error == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %u\n", error );

            FUNC2(0xdeadbeef);
            ret = FUNC6( "machine", NULL, monitor.DeviceID );
            error = FUNC0();
            FUNC4( !ret, "DisassociateColorProfileFromDeviceA() succeeded\n" );
            FUNC4( error == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %u\n", error );

            FUNC2(0xdeadbeef);
            ret = FUNC6( "machine", profile, monitor.DeviceID );
            error = FUNC0();
            FUNC4( !ret, "DisassociateColorProfileFromDeviceA() succeeded\n" );
            FUNC4( error == ERROR_NOT_SUPPORTED, "expected ERROR_NOT_SUPPORTED, got %u\n", error );

            ret = FUNC6( NULL, profile, monitor.DeviceID );
            FUNC4( ret, "DisassociateColorProfileFromDeviceA() failed (%u)\n", FUNC0() );

            ret = FUNC10( NULL, profile, TRUE );
            FUNC4( ret, "UninstallColorProfileA() failed (%d)\n", FUNC0() );
        }
        else
            FUNC11("Unable to obtain monitor name\n");
    }
}