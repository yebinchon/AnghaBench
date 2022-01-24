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
typedef  int /*<<< orphan*/  expect ;
struct TYPE_3__ {char* pProfileData; int /*<<< orphan*/  cbDataSize; int /*<<< orphan*/  dwType; } ;
typedef  TYPE_1__ PROFILE ;
typedef  int /*<<< orphan*/ * HPROFILE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  PROFILE_FILENAME ; 
 int /*<<< orphan*/  PROFILE_READ ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,unsigned char*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10( char *testprofile )
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
        profile.cbDataSize = FUNC9(testprofile);

        handle = FUNC8( &profile, PROFILE_READ, 0, OPEN_EXISTING );
        FUNC5( handle != NULL, "OpenColorProfileA() failed (%d)\n", FUNC0() );

        /* Parameter checks */

        size = 0;

        ret = FUNC7( handle, NULL, &size );
        FUNC5( !ret && size > 0, "GetColorProfileFromHandle() failed (%d)\n", FUNC0() );

        buffer = FUNC2( FUNC1(), 0, size );

        if (buffer)
        {
            ret = FUNC7( NULL, buffer, &size );
            FUNC5( !ret, "GetColorProfileFromHandle() succeeded (%d)\n", FUNC0() );

            ret = FUNC7( handle, buffer, NULL );
            FUNC5( !ret, "GetColorProfileFromHandle() succeeded (%d)\n", FUNC0() );

            /* Functional checks */

            ret = FUNC7( handle, buffer, &size );
            FUNC5( ret && size > 0, "GetColorProfileFromHandle() failed (%d)\n", FUNC0() );

            FUNC5( !FUNC4( buffer, expect, sizeof(expect) ), "Unexpected header data\n" );

            FUNC3( FUNC1(), 0, buffer );
        }

        FUNC6( handle );
    }
}