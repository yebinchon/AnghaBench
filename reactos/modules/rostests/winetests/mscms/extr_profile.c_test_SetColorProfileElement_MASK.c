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
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_3__ {char* pProfileData; int /*<<< orphan*/  cbDataSize; int /*<<< orphan*/  dwType; } ;
typedef  int TAGTYPE ;
typedef  TYPE_1__ PROFILE ;
typedef  int /*<<< orphan*/ * HPROFILE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  PROFILE_FILENAME ; 
 int /*<<< orphan*/  PROFILE_READ ; 
 int /*<<< orphan*/  PROFILE_READWRITE ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8( char *testprofile )
{
    if (testprofile)
    {
        PROFILE profile;
        HPROFILE handle;
        DWORD size;
        BOOL ret, ref;

        TAGTYPE tag = 0x63707274;  /* 'cprt' */
        static char data[] = "(c) The Wine Project";
        static char buffer[51];

        profile.dwType = PROFILE_FILENAME;
        profile.pProfileData = testprofile;
        profile.cbDataSize = FUNC7(testprofile);

        /* Parameter checks */

        handle = FUNC5( &profile, PROFILE_READ, 0, OPEN_EXISTING );
        FUNC2( handle != NULL, "OpenColorProfileA() failed (%d)\n", FUNC0() );

        ret = FUNC6( handle, tag, 0, &size, data );
        FUNC2( !ret, "SetColorProfileElement() succeeded (%d)\n", FUNC0() );

        FUNC3( handle );

        handle = FUNC5( &profile, PROFILE_READWRITE, 0, OPEN_EXISTING );
        FUNC2( handle != NULL, "OpenColorProfileA() failed (%d)\n", FUNC0() );

        ret = FUNC6( NULL, 0, 0, NULL, NULL );
        FUNC2( !ret, "SetColorProfileElement() succeeded (%d)\n", FUNC0() );

        ret = FUNC6( handle, 0, 0, NULL, NULL );
        FUNC2( !ret, "SetColorProfileElement() succeeded (%d)\n", FUNC0() );

        ret = FUNC6( handle, tag, 0, NULL, NULL );
        FUNC2( !ret, "SetColorProfileElement() succeeded (%d)\n", FUNC0() );

        ret = FUNC6( handle, tag, 0, &size, NULL );
        FUNC2( !ret, "SetColorProfileElement() succeeded (%d)\n", FUNC0() );

        /* Functional checks */

        size = sizeof(data);
        ret = FUNC6( handle, tag, 0, &size, data );
        FUNC2( ret, "SetColorProfileElement() failed %u\n", FUNC0() );

        size = sizeof(buffer);
        ret = FUNC4( handle, tag, 0, &size, buffer, &ref );
        FUNC2( ret, "GetColorProfileElement() failed %u\n", FUNC0() );
        FUNC2( size > 0, "wrong size\n" );

        FUNC2( !FUNC1( data, buffer, sizeof(data) ),
            "Unexpected tag data, expected %s, got %s (%u)\n", data, buffer, FUNC0() );

        FUNC3( handle );
    }
}