
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int profile ;
struct TYPE_3__ {int cb; int * DeviceID; int * DeviceName; } ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ DISPLAY_DEVICEA ;
typedef int BOOL ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NOT_SUPPORTED ;
 scalar_t__ GetLastError () ;
 int MAX_PATH ;
 int MSCMS_basenameA (char*,char*) ;
 int SetLastError (int) ;
 int TRUE ;
 int lstrcatA (char*,char*) ;
 int ok (int,char*,...) ;
 int pAssociateColorProfileWithDeviceA (char*,char*,int *) ;
 int pDisassociateColorProfileFromDeviceA (char*,char*,int *) ;
 int pEnumDisplayDevicesA (int *,int ,TYPE_1__*,int ) ;
 int pGetColorDirectoryA (int *,char*,scalar_t__*) ;
 int pInstallColorProfileA (int *,char*) ;
 int pUninstallColorProfileA (int *,char*,int ) ;
 int skip (char*) ;

__attribute__((used)) static void test_AssociateColorProfileWithDeviceA( char *testprofile )
{
    BOOL ret;
    char profile[MAX_PATH], basename[MAX_PATH];
    DWORD error, size = sizeof(profile);
    DISPLAY_DEVICEA display, monitor;
    BOOL res;

    if (testprofile && pEnumDisplayDevicesA)
    {
        display.cb = sizeof( DISPLAY_DEVICEA );
        res = pEnumDisplayDevicesA( ((void*)0), 0, &display, 0 );
        ok( res, "Can't get display info\n" );

        monitor.cb = sizeof( DISPLAY_DEVICEA );
        res = pEnumDisplayDevicesA( display.DeviceName, 0, &monitor, 0 );
        if (res)
        {
            SetLastError(0xdeadbeef);
            ret = pAssociateColorProfileWithDeviceA( "machine", testprofile, ((void*)0) );
            error = GetLastError();
            ok( !ret, "AssociateColorProfileWithDevice() succeeded\n" );
            ok( error == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %u\n", error );

            SetLastError(0xdeadbeef);
            ret = pAssociateColorProfileWithDeviceA( "machine", ((void*)0), monitor.DeviceID );
            error = GetLastError();
            ok( !ret, "AssociateColorProfileWithDevice() succeeded\n" );
            ok( error == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %u\n", error );

            SetLastError(0xdeadbeef);
            ret = pAssociateColorProfileWithDeviceA( "machine", testprofile, monitor.DeviceID );
            error = GetLastError();
            ok( !ret, "AssociateColorProfileWithDevice() succeeded\n" );
            ok( error == ERROR_NOT_SUPPORTED, "expected ERROR_NOT_SUPPORTED, got %u\n", error );

            ret = pInstallColorProfileA( ((void*)0), testprofile );
            ok( ret, "InstallColorProfileA() failed (%u)\n", GetLastError() );

            ret = pGetColorDirectoryA( ((void*)0), profile, &size );
            ok( ret, "GetColorDirectoryA() failed (%d)\n", GetLastError() );

            MSCMS_basenameA( testprofile, basename );
            lstrcatA( profile, "\\" );
            lstrcatA( profile, basename );

            ret = pAssociateColorProfileWithDeviceA( ((void*)0), profile, monitor.DeviceID );
            ok( ret, "AssociateColorProfileWithDevice() failed (%u)\n", GetLastError() );

            SetLastError(0xdeadbeef);
            ret = pDisassociateColorProfileFromDeviceA( "machine", profile, ((void*)0) );
            error = GetLastError();
            ok( !ret, "DisassociateColorProfileFromDeviceA() succeeded\n" );
            ok( error == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %u\n", error );

            SetLastError(0xdeadbeef);
            ret = pDisassociateColorProfileFromDeviceA( "machine", ((void*)0), monitor.DeviceID );
            error = GetLastError();
            ok( !ret, "DisassociateColorProfileFromDeviceA() succeeded\n" );
            ok( error == ERROR_INVALID_PARAMETER, "expected ERROR_INVALID_PARAMETER, got %u\n", error );

            SetLastError(0xdeadbeef);
            ret = pDisassociateColorProfileFromDeviceA( "machine", profile, monitor.DeviceID );
            error = GetLastError();
            ok( !ret, "DisassociateColorProfileFromDeviceA() succeeded\n" );
            ok( error == ERROR_NOT_SUPPORTED, "expected ERROR_NOT_SUPPORTED, got %u\n", error );

            ret = pDisassociateColorProfileFromDeviceA( ((void*)0), profile, monitor.DeviceID );
            ok( ret, "DisassociateColorProfileFromDeviceA() failed (%u)\n", GetLastError() );

            ret = pUninstallColorProfileA( ((void*)0), profile, TRUE );
            ok( ret, "UninstallColorProfileA() failed (%d)\n", GetLastError() );
        }
        else
            skip("Unable to obtain monitor name\n");
    }
}
