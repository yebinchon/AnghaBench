
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dest ;
typedef char WCHAR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (char*,int ,int ,int *,int ,int ,int *) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int MSCMS_basenameW (char*,char*) ;
 int OPEN_EXISTING ;
 int SetLastError (int) ;
 int TRUE ;
 int lstrcatW (char*,char*) ;
 char* machineW ;
 int ok (int,char*,scalar_t__) ;
 int pGetColorDirectoryW (int *,char*,int*) ;
 int pInstallColorProfileW (char*,char*) ;
 int pUninstallColorProfileW (int *,char*,int ) ;
 int skip (char*) ;

__attribute__((used)) static void test_InstallColorProfileW( WCHAR *standardprofileW, WCHAR *testprofileW )
{
    BOOL ret;



    ret = pInstallColorProfileW( ((void*)0), ((void*)0) );
    ok( !ret, "InstallColorProfileW() succeeded (%d)\n", GetLastError() );

    ret = pInstallColorProfileW( machineW, ((void*)0) );
    ok( !ret, "InstallColorProfileW() succeeded (%d)\n", GetLastError() );

    ret = pInstallColorProfileW( ((void*)0), machineW );
    ok( !ret, "InstallColorProfileW() failed (%d)\n", GetLastError() );

    if (standardprofileW)
    {
        ret = pInstallColorProfileW( ((void*)0), standardprofileW );
        ok( ret, "InstallColorProfileW() failed (%d)\n", GetLastError() );
    }



    if (testprofileW)
    {
        WCHAR dest[MAX_PATH], base[MAX_PATH];
        DWORD size = sizeof(dest);
        WCHAR slash[] = { '\\', 0 };
        HANDLE handle;

        SetLastError(0xdeadbeef);
        ret = pInstallColorProfileW( ((void*)0), testprofileW );
        if (!ret && (GetLastError() == ERROR_ACCESS_DENIED))
        {
            skip("Not enough rights for InstallColorProfileW\n");
            return;
        }
        ok( ret, "InstallColorProfileW() failed (%d)\n", GetLastError() );

        ret = pGetColorDirectoryW( ((void*)0), dest, &size );
        ok( ret, "GetColorDirectoryW() failed (%d)\n", GetLastError() );

        MSCMS_basenameW( testprofileW, base );

        lstrcatW( dest, slash );
        lstrcatW( dest, base );


        handle = CreateFileW( dest, 0 , 0, ((void*)0), OPEN_EXISTING, 0, ((void*)0) );
        ok( handle != INVALID_HANDLE_VALUE, "Couldn't find the profile (%d)\n", GetLastError() );
        CloseHandle( handle );

        ret = pUninstallColorProfileW( ((void*)0), dest, TRUE );
        ok( ret, "UninstallColorProfileW() failed (%d)\n", GetLastError() );
    }
}
