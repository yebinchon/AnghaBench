
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dest ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef char CHAR ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int MSCMS_basenameA (char*,char*) ;
 int OPEN_EXISTING ;
 int SetLastError (int) ;
 int TRUE ;
 int lstrcatA (char*,char*) ;
 char* machine ;
 int ok (int,char*,scalar_t__) ;
 int pGetColorDirectoryA (int *,char*,int*) ;
 int pInstallColorProfileA (char*,char*) ;
 int pUninstallColorProfileA (int *,char*,int ) ;
 int skip (char*) ;

__attribute__((used)) static void test_InstallColorProfileA( char *standardprofile, char *testprofile )
{
    BOOL ret;



    ret = pInstallColorProfileA( ((void*)0), ((void*)0) );
    ok( !ret, "InstallColorProfileA() succeeded (%d)\n", GetLastError() );

    ret = pInstallColorProfileA( machine, ((void*)0) );
    ok( !ret, "InstallColorProfileA() succeeded (%d)\n", GetLastError() );

    ret = pInstallColorProfileA( ((void*)0), machine );
    ok( !ret, "InstallColorProfileA() succeeded (%d)\n", GetLastError() );

    if (standardprofile)
    {
        ret = pInstallColorProfileA( ((void*)0), standardprofile );
        ok( ret, "InstallColorProfileA() failed (%d)\n", GetLastError() );
    }



    if (testprofile)
    {
        CHAR dest[MAX_PATH], base[MAX_PATH];
        DWORD size = sizeof(dest);
        CHAR slash[] = "\\";
        HANDLE handle;

        SetLastError(0xdeadbeef);
        ret = pInstallColorProfileA( ((void*)0), testprofile );
        if (!ret && (GetLastError() == ERROR_ACCESS_DENIED))
        {
            skip("Not enough rights for InstallColorProfileA\n");
            return;
        }
        ok( ret, "InstallColorProfileA() failed (%d)\n", GetLastError() );

        ret = pGetColorDirectoryA( ((void*)0), dest, &size );
        ok( ret, "GetColorDirectoryA() failed (%d)\n", GetLastError() );

        MSCMS_basenameA( testprofile, base );

        lstrcatA( dest, slash );
        lstrcatA( dest, base );


        handle = CreateFileA( dest, 0 , 0, ((void*)0), OPEN_EXISTING, 0, ((void*)0) );
        ok( handle != INVALID_HANDLE_VALUE, "Couldn't find the profile (%d)\n", GetLastError() );
        CloseHandle( handle );

        ret = pUninstallColorProfileA( ((void*)0), dest, TRUE );
        ok( ret, "UninstallColorProfileA() failed (%d)\n", GetLastError() );
    }
}
