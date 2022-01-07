
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int cbDataSize; int * pProfileData; int dwType; } ;
typedef TYPE_1__ PROFILE ;
typedef int * HPROFILE ;
typedef int BOOL ;


 int GetLastError () ;
 int OPEN_EXISTING ;
 int PROFILE_FILENAME ;
 int PROFILE_READ ;
 int PROFILE_READWRITE ;
 int lstrlenW (int *) ;
 int ok (int,char*,...) ;
 int pCloseColorProfile (int *) ;
 int * pOpenColorProfileW (TYPE_1__*,int,int ,int ) ;

__attribute__((used)) static void test_OpenColorProfileW( WCHAR *standardprofileW )
{
    PROFILE profile;
    HPROFILE handle;
    BOOL ret;

    profile.dwType = PROFILE_FILENAME;
    profile.pProfileData = ((void*)0);
    profile.cbDataSize = 0;



    handle = pOpenColorProfileW( ((void*)0), 0, 0, 0 );
    ok( handle == ((void*)0), "OpenColorProfileW() failed (%d)\n", GetLastError() );

    handle = pOpenColorProfileW( &profile, 0, 0, 0 );
    ok( handle == ((void*)0), "OpenColorProfileW() failed (%d)\n", GetLastError() );

    handle = pOpenColorProfileW( &profile, PROFILE_READ, 0, 0 );
    ok( handle == ((void*)0), "OpenColorProfileW() failed (%d)\n", GetLastError() );

    handle = pOpenColorProfileW( &profile, PROFILE_READWRITE, 0, 0 );
    ok( handle == ((void*)0), "OpenColorProfileW() failed (%d)\n", GetLastError() );

    ok ( !pCloseColorProfile( ((void*)0) ), "CloseColorProfile() succeeded\n" );

    if (standardprofileW)
    {
        profile.pProfileData = standardprofileW;
        profile.cbDataSize = lstrlenW(standardprofileW) * sizeof(WCHAR);

        handle = pOpenColorProfileW( &profile, 0, 0, 0 );
        ok( handle == ((void*)0), "OpenColorProfileW() failed (%d)\n", GetLastError() );

        handle = pOpenColorProfileW( &profile, PROFILE_READ, 0, 0 );
        ok( handle == ((void*)0), "OpenColorProfileW() failed (%d)\n", GetLastError() );

        handle = pOpenColorProfileW( &profile, PROFILE_READ|PROFILE_READWRITE, 0, 0 );
        ok( handle == ((void*)0), "OpenColorProfileW() failed (%d)\n", GetLastError() );



        handle = pOpenColorProfileW( &profile, PROFILE_READ, 0, OPEN_EXISTING );
        ok( handle != ((void*)0), "OpenColorProfileW() failed (%d)\n", GetLastError() );

        ret = pCloseColorProfile( handle );
        ok( ret, "CloseColorProfile() failed (%d)\n", GetLastError() );
    }
}
