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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int cbDataSize; int /*<<< orphan*/ * pProfileData; int /*<<< orphan*/  dwType; } ;
typedef  TYPE_1__ PROFILE ;
typedef  int /*<<< orphan*/ * HPROFILE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  PROFILE_FILENAME ; 
 int PROFILE_READ ; 
 int PROFILE_READWRITE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5( WCHAR *standardprofileW )
{
    PROFILE profile;
    HPROFILE handle;
    BOOL ret;

    profile.dwType = PROFILE_FILENAME;
    profile.pProfileData = NULL;
    profile.cbDataSize = 0;

    /* Parameter checks */

    handle = FUNC4( NULL, 0, 0, 0 );
    FUNC2( handle == NULL, "OpenColorProfileW() failed (%d)\n", FUNC0() );

    handle = FUNC4( &profile, 0, 0, 0 );
    FUNC2( handle == NULL, "OpenColorProfileW() failed (%d)\n", FUNC0() );

    handle = FUNC4( &profile, PROFILE_READ, 0, 0 );
    FUNC2( handle == NULL, "OpenColorProfileW() failed (%d)\n", FUNC0() );

    handle = FUNC4( &profile, PROFILE_READWRITE, 0, 0 );
    FUNC2( handle == NULL, "OpenColorProfileW() failed (%d)\n", FUNC0() );

    FUNC2 ( !FUNC3( NULL ), "CloseColorProfile() succeeded\n" );

    if (standardprofileW)
    {
        profile.pProfileData = standardprofileW;
        profile.cbDataSize = FUNC1(standardprofileW) * sizeof(WCHAR);

        handle = FUNC4( &profile, 0, 0, 0 );
        FUNC2( handle == NULL, "OpenColorProfileW() failed (%d)\n", FUNC0() );

        handle = FUNC4( &profile, PROFILE_READ, 0, 0 );
        FUNC2( handle == NULL, "OpenColorProfileW() failed (%d)\n", FUNC0() );

        handle = FUNC4( &profile, PROFILE_READ|PROFILE_READWRITE, 0, 0 );
        FUNC2( handle == NULL, "OpenColorProfileW() failed (%d)\n", FUNC0() );

        /* Functional checks */

        handle = FUNC4( &profile, PROFILE_READ, 0, OPEN_EXISTING );
        FUNC2( handle != NULL, "OpenColorProfileW() failed (%d)\n", FUNC0() );

        ret = FUNC3( handle );
        FUNC2( ret, "CloseColorProfile() failed (%d)\n", FUNC0() );
    }
}