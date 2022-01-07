
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int expect ;
struct TYPE_3__ {char* pProfileData; int cbDataSize; int dwType; } ;
typedef TYPE_1__ PROFILE ;
typedef int * HPROFILE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int GetLastError () ;
 int GetProcessHeap () ;
 unsigned char* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,unsigned char*) ;
 int OPEN_EXISTING ;
 int PROFILE_FILENAME ;
 int PROFILE_READ ;
 int memcmp (unsigned char*,unsigned char const*,int) ;
 int ok (int,char*,...) ;
 int pCloseColorProfile (int *) ;
 scalar_t__ pGetColorProfileFromHandle (int *,unsigned char*,scalar_t__*) ;
 int * pOpenColorProfileA (TYPE_1__*,int ,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void test_GetColorProfileFromHandle( char *testprofile )
{
    if (testprofile)
    {
        PROFILE profile;
        HPROFILE handle;
        DWORD size;
        BOOL ret;
        static const unsigned char expect[] =
            { 0x00, 0x00, 0x0c, 0x48, 0x4c, 0x69, 0x6e, 0x6f, 0x02, 0x10, 0x00,
              0x00, 0x6d, 0x6e, 0x74, 0x72, 0x52, 0x47, 0x42, 0x20, 0x58, 0x59,
              0x5a, 0x20, 0x07, 0xce, 0x00, 0x02, 0x00, 0x09, 0x00, 0x06, 0x00,
              0x31, 0x00, 0x00, 0x61, 0x63, 0x73, 0x70, 0x4d, 0x53, 0x46, 0x54,
              0x00, 0x00, 0x00, 0x00, 0x49, 0x45, 0x43, 0x20, 0x73, 0x52, 0x47,
              0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
              0x00, 0x00, 0x00, 0x00, 0xf6, 0xd6, 0x00, 0x01, 0x00, 0x00, 0x00,
              0x00, 0xd3, 0x2d, 0x48, 0x50, 0x20, 0x20 };

        unsigned char *buffer;

        profile.dwType = PROFILE_FILENAME;
        profile.pProfileData = testprofile;
        profile.cbDataSize = strlen(testprofile);

        handle = pOpenColorProfileA( &profile, PROFILE_READ, 0, OPEN_EXISTING );
        ok( handle != ((void*)0), "OpenColorProfileA() failed (%d)\n", GetLastError() );



        size = 0;

        ret = pGetColorProfileFromHandle( handle, ((void*)0), &size );
        ok( !ret && size > 0, "GetColorProfileFromHandle() failed (%d)\n", GetLastError() );

        buffer = HeapAlloc( GetProcessHeap(), 0, size );

        if (buffer)
        {
            ret = pGetColorProfileFromHandle( ((void*)0), buffer, &size );
            ok( !ret, "GetColorProfileFromHandle() succeeded (%d)\n", GetLastError() );

            ret = pGetColorProfileFromHandle( handle, buffer, ((void*)0) );
            ok( !ret, "GetColorProfileFromHandle() succeeded (%d)\n", GetLastError() );



            ret = pGetColorProfileFromHandle( handle, buffer, &size );
            ok( ret && size > 0, "GetColorProfileFromHandle() failed (%d)\n", GetLastError() );

            ok( !memcmp( buffer, expect, sizeof(expect) ), "Unexpected header data\n" );

            HeapFree( GetProcessHeap(), 0, buffer );
        }

        pCloseColorProfile( handle );
    }
}
