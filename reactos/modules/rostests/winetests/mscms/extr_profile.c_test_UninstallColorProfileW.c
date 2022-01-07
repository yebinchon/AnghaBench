
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dest ;
typedef char WCHAR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CP_ACP ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int ERROR_ACCESS_DENIED ;
 int FALSE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int MSCMS_basenameW (char*,char*) ;
 int OPEN_EXISTING ;
 int SetLastError (int) ;
 int TRUE ;
 int WideCharToMultiByte (int ,int ,char*,int,char*,int,int *,int *) ;
 int lstrcatW (char*,char*) ;
 int * machineW ;
 int ok (int,char*,int) ;
 int pGetColorDirectoryW (int *,char*,int*) ;
 int pInstallColorProfileW (int *,char*) ;
 int pUninstallColorProfileW (int *,char*,int ) ;
 int skip (char*) ;

__attribute__((used)) static void test_UninstallColorProfileW( WCHAR *testprofileW )
{
    BOOL ret;



    ret = pUninstallColorProfileW( ((void*)0), ((void*)0), FALSE );
    ok( !ret, "UninstallColorProfileW() succeeded (%d)\n", GetLastError() );

    ret = pUninstallColorProfileW( machineW, ((void*)0), FALSE );
    ok( !ret, "UninstallColorProfileW() succeeded (%d)\n", GetLastError() );



    if (testprofileW)
    {
        WCHAR dest[MAX_PATH], base[MAX_PATH];
        char destA[MAX_PATH];
        DWORD size = sizeof(dest);
        WCHAR slash[] = { '\\', 0 };
        HANDLE handle;
        int bytes_copied;

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

        ret = pUninstallColorProfileW( ((void*)0), dest, TRUE );
        ok( ret, "UninstallColorProfileW() failed (%d)\n", GetLastError() );

        bytes_copied = WideCharToMultiByte(CP_ACP, 0, dest, -1, destA, MAX_PATH, ((void*)0), ((void*)0));
        ok( bytes_copied > 0 , "WideCharToMultiByte() returns %d\n", bytes_copied);

        handle = CreateFileA( destA, 0 , 0, ((void*)0), OPEN_EXISTING, 0, ((void*)0) );
        ok( handle == INVALID_HANDLE_VALUE, "Found the profile (%d)\n", GetLastError() );
        CloseHandle( handle );
    }
}
