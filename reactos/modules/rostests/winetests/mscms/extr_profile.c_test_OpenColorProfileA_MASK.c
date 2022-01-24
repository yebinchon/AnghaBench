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
struct TYPE_3__ {char* pProfileData; int cbDataSize; void* dwType; } ;
typedef  TYPE_1__ PROFILE ;
typedef  int /*<<< orphan*/ * HPROFILE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 void* PROFILE_FILENAME ; 
 int PROFILE_READ ; 
 int PROFILE_READWRITE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5( char *standardprofile )
{
    PROFILE profile;
    HPROFILE handle;
    BOOL ret;

    profile.dwType = PROFILE_FILENAME;
    profile.pProfileData = NULL;
    profile.cbDataSize = 0;

    /* Parameter checks */

    handle = FUNC3( NULL, 0, 0, 0 );
    FUNC1( handle == NULL, "OpenColorProfileA() failed (%d)\n", FUNC0() );

    handle = FUNC3( &profile, 0, 0, 0 );
    FUNC1( handle == NULL, "OpenColorProfileA() failed (%d)\n", FUNC0() );

    handle = FUNC3( &profile, PROFILE_READ, 0, 0 );
    FUNC1( handle == NULL, "OpenColorProfileA() failed (%d)\n", FUNC0() );

    handle = FUNC3( &profile, PROFILE_READWRITE, 0, 0 );
    FUNC1( handle == NULL, "OpenColorProfileA() failed (%d)\n", FUNC0() );

    FUNC1 ( !FUNC2( NULL ), "CloseColorProfile() succeeded\n" );

    if (standardprofile)
    {
        profile.pProfileData = standardprofile;
        profile.cbDataSize = FUNC4(standardprofile);

        handle = FUNC3( &profile, 0, 0, 0 );
        FUNC1( handle == NULL, "OpenColorProfileA() failed (%d)\n", FUNC0() );

        handle = FUNC3( &profile, PROFILE_READ, 0, 0 );
        FUNC1( handle == NULL, "OpenColorProfileA() failed (%d)\n", FUNC0() );

        handle = FUNC3( &profile, PROFILE_READ|PROFILE_READWRITE, 0, 0 );
        FUNC1( handle == NULL, "OpenColorProfileA() failed (%d)\n", FUNC0() );

        /* Functional checks */

        handle = FUNC3( &profile, PROFILE_READ, 0, OPEN_EXISTING );
        FUNC1( handle != NULL, "OpenColorProfileA() failed (%d)\n", FUNC0() );

        ret = FUNC2( handle );
        FUNC1( ret, "CloseColorProfile() failed (%d)\n", FUNC0() );

        profile.dwType = PROFILE_FILENAME;
        profile.pProfileData = (void *)"sRGB Color Space Profile.icm";
        profile.cbDataSize = sizeof("sRGB Color Space Profile.icm");

        handle = FUNC3( &profile, PROFILE_READ, FILE_SHARE_READ, OPEN_EXISTING );
        FUNC1( handle != NULL, "OpenColorProfileA() failed (%d)\n", FUNC0() );

        ret = FUNC2( handle );
        FUNC1( ret, "CloseColorProfile() failed (%d)\n", FUNC0() );
    }
}