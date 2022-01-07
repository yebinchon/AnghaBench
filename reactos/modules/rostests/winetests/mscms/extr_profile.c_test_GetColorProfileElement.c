
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int expect ;
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
 int memcmp (char*,char const*,int) ;
 int ok (int,char*,...) ;
 int pCloseColorProfile (int *) ;
 int pGetColorProfileElement (int *,int,int ,int*,char*,int *) ;
 int * pOpenColorProfileA (TYPE_1__*,int ,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void test_GetColorProfileElement( char *standardprofile )
{
    if (standardprofile)
    {
        PROFILE profile;
        HPROFILE handle;
        BOOL ret, ref;
        DWORD size;
        TAGTYPE tag = 0x63707274;
        static char buffer[51];
        static const char expect[] =
            { 0x74, 0x65, 0x78, 0x74, 0x00, 0x00, 0x00, 0x00, 0x43, 0x6f, 0x70,
              0x79, 0x72, 0x69, 0x67, 0x68, 0x74, 0x20, 0x28, 0x63, 0x29, 0x20,
              0x31, 0x39, 0x39, 0x38, 0x20, 0x48, 0x65, 0x77, 0x6c, 0x65, 0x74,
              0x74, 0x2d, 0x50, 0x61, 0x63, 0x6b, 0x61, 0x72, 0x64, 0x20, 0x43,
              0x6f, 0x6d, 0x70, 0x61, 0x6e, 0x79, 0x00 };

        profile.dwType = PROFILE_FILENAME;
        profile.pProfileData = standardprofile;
        profile.cbDataSize = strlen(standardprofile);

        handle = pOpenColorProfileA( &profile, PROFILE_READ, 0, OPEN_EXISTING );
        ok( handle != ((void*)0), "OpenColorProfileA() failed (%d)\n", GetLastError() );



        ret = pGetColorProfileElement( handle, tag, 0, ((void*)0), ((void*)0), &ref );
        ok( !ret, "GetColorProfileElement() succeeded (%d)\n", GetLastError() );

        ret = pGetColorProfileElement( handle, tag, 0, &size, ((void*)0), ((void*)0) );
        ok( !ret, "GetColorProfileElement() succeeded (%d)\n", GetLastError() );

        size = 0;
        ret = pGetColorProfileElement( handle, tag, 0, &size, ((void*)0), &ref );
        ok( !ret, "GetColorProfileElement() succeeded\n" );
        ok( size > 0, "wrong size\n" );



        size = sizeof(buffer);
        ret = pGetColorProfileElement( handle, tag, 0, &size, buffer, &ref );
        ok( ret, "GetColorProfileElement() failed %u\n", GetLastError() );
        ok( size > 0, "wrong size\n" );
        ok( !memcmp( buffer, expect, sizeof(expect) ), "Unexpected tag data\n" );

        pCloseColorProfile( handle );
    }
}
