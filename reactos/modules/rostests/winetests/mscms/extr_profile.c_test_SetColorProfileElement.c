
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int data ;
typedef int buffer ;
struct TYPE_3__ {char* pProfileData; int cbDataSize; int dwType; } ;
typedef int TAGTYPE ;
typedef TYPE_1__ PROFILE ;
typedef int * HPROFILE ;
typedef int DWORD ;
typedef int BOOL ;


 int GetLastError () ;
 int OPEN_EXISTING ;
 int PROFILE_FILENAME ;
 int PROFILE_READ ;
 int PROFILE_READWRITE ;
 int memcmp (char*,char*,int) ;
 int ok (int,char*,...) ;
 int pCloseColorProfile (int *) ;
 int pGetColorProfileElement (int *,int,int ,int*,char*,int *) ;
 int * pOpenColorProfileA (TYPE_1__*,int ,int ,int ) ;
 int pSetColorProfileElement (int *,int,int ,int*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void test_SetColorProfileElement( char *testprofile )
{
    if (testprofile)
    {
        PROFILE profile;
        HPROFILE handle;
        DWORD size;
        BOOL ret, ref;

        TAGTYPE tag = 0x63707274;
        static char data[] = "(c) The Wine Project";
        static char buffer[51];

        profile.dwType = PROFILE_FILENAME;
        profile.pProfileData = testprofile;
        profile.cbDataSize = strlen(testprofile);



        handle = pOpenColorProfileA( &profile, PROFILE_READ, 0, OPEN_EXISTING );
        ok( handle != ((void*)0), "OpenColorProfileA() failed (%d)\n", GetLastError() );

        ret = pSetColorProfileElement( handle, tag, 0, &size, data );
        ok( !ret, "SetColorProfileElement() succeeded (%d)\n", GetLastError() );

        pCloseColorProfile( handle );

        handle = pOpenColorProfileA( &profile, PROFILE_READWRITE, 0, OPEN_EXISTING );
        ok( handle != ((void*)0), "OpenColorProfileA() failed (%d)\n", GetLastError() );

        ret = pSetColorProfileElement( ((void*)0), 0, 0, ((void*)0), ((void*)0) );
        ok( !ret, "SetColorProfileElement() succeeded (%d)\n", GetLastError() );

        ret = pSetColorProfileElement( handle, 0, 0, ((void*)0), ((void*)0) );
        ok( !ret, "SetColorProfileElement() succeeded (%d)\n", GetLastError() );

        ret = pSetColorProfileElement( handle, tag, 0, ((void*)0), ((void*)0) );
        ok( !ret, "SetColorProfileElement() succeeded (%d)\n", GetLastError() );

        ret = pSetColorProfileElement( handle, tag, 0, &size, ((void*)0) );
        ok( !ret, "SetColorProfileElement() succeeded (%d)\n", GetLastError() );



        size = sizeof(data);
        ret = pSetColorProfileElement( handle, tag, 0, &size, data );
        ok( ret, "SetColorProfileElement() failed %u\n", GetLastError() );

        size = sizeof(buffer);
        ret = pGetColorProfileElement( handle, tag, 0, &size, buffer, &ref );
        ok( ret, "GetColorProfileElement() failed %u\n", GetLastError() );
        ok( size > 0, "wrong size\n" );

        ok( !memcmp( data, buffer, sizeof(data) ),
            "Unexpected tag data, expected %s, got %s (%u)\n", data, buffer, GetLastError() );

        pCloseColorProfile( handle );
    }
}
