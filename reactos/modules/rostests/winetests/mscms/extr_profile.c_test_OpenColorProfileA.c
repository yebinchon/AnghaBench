
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* pProfileData; int cbDataSize; void* dwType; } ;
typedef TYPE_1__ PROFILE ;
typedef int * HPROFILE ;
typedef int BOOL ;


 int FILE_SHARE_READ ;
 int GetLastError () ;
 int OPEN_EXISTING ;
 void* PROFILE_FILENAME ;
 int PROFILE_READ ;
 int PROFILE_READWRITE ;
 int ok (int,char*,...) ;
 int pCloseColorProfile (int *) ;
 int * pOpenColorProfileA (TYPE_1__*,int,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void test_OpenColorProfileA( char *standardprofile )
{
    PROFILE profile;
    HPROFILE handle;
    BOOL ret;

    profile.dwType = PROFILE_FILENAME;
    profile.pProfileData = ((void*)0);
    profile.cbDataSize = 0;



    handle = pOpenColorProfileA( ((void*)0), 0, 0, 0 );
    ok( handle == ((void*)0), "OpenColorProfileA() failed (%d)\n", GetLastError() );

    handle = pOpenColorProfileA( &profile, 0, 0, 0 );
    ok( handle == ((void*)0), "OpenColorProfileA() failed (%d)\n", GetLastError() );

    handle = pOpenColorProfileA( &profile, PROFILE_READ, 0, 0 );
    ok( handle == ((void*)0), "OpenColorProfileA() failed (%d)\n", GetLastError() );

    handle = pOpenColorProfileA( &profile, PROFILE_READWRITE, 0, 0 );
    ok( handle == ((void*)0), "OpenColorProfileA() failed (%d)\n", GetLastError() );

    ok ( !pCloseColorProfile( ((void*)0) ), "CloseColorProfile() succeeded\n" );

    if (standardprofile)
    {
        profile.pProfileData = standardprofile;
        profile.cbDataSize = strlen(standardprofile);

        handle = pOpenColorProfileA( &profile, 0, 0, 0 );
        ok( handle == ((void*)0), "OpenColorProfileA() failed (%d)\n", GetLastError() );

        handle = pOpenColorProfileA( &profile, PROFILE_READ, 0, 0 );
        ok( handle == ((void*)0), "OpenColorProfileA() failed (%d)\n", GetLastError() );

        handle = pOpenColorProfileA( &profile, PROFILE_READ|PROFILE_READWRITE, 0, 0 );
        ok( handle == ((void*)0), "OpenColorProfileA() failed (%d)\n", GetLastError() );



        handle = pOpenColorProfileA( &profile, PROFILE_READ, 0, OPEN_EXISTING );
        ok( handle != ((void*)0), "OpenColorProfileA() failed (%d)\n", GetLastError() );

        ret = pCloseColorProfile( handle );
        ok( ret, "CloseColorProfile() failed (%d)\n", GetLastError() );

        profile.dwType = PROFILE_FILENAME;
        profile.pProfileData = (void *)"sRGB Color Space Profile.icm";
        profile.cbDataSize = sizeof("sRGB Color Space Profile.icm");

        handle = pOpenColorProfileA( &profile, PROFILE_READ, FILE_SHARE_READ, OPEN_EXISTING );
        ok( handle != ((void*)0), "OpenColorProfileA() failed (%d)\n", GetLastError() );

        ret = pCloseColorProfile( handle );
        ok( ret, "CloseColorProfile() failed (%d)\n", GetLastError() );
    }
}
