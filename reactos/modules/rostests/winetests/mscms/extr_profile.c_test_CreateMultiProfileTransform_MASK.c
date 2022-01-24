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
struct TYPE_3__ {char* pProfileData; void* cbDataSize; void* dwType; } ;
typedef  TYPE_1__ PROFILE ;
typedef  int /*<<< orphan*/ * HTRANSFORM ;
typedef  int /*<<< orphan*/ * HPROFILE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  INTENT_PERCEPTUAL ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 void* PROFILE_FILENAME ; 
 int /*<<< orphan*/  PROFILE_READ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7( char *standardprofile, char *testprofile )
{
    PROFILE profile;
    HPROFILE handle[2];
    HTRANSFORM transform;
    DWORD intents[2] = { INTENT_PERCEPTUAL, INTENT_PERCEPTUAL };

    if (testprofile)
    {
        profile.dwType       = PROFILE_FILENAME;
        profile.pProfileData = standardprofile;
        profile.cbDataSize   = FUNC6(standardprofile);

        handle[0] = FUNC5( &profile, PROFILE_READ, 0, OPEN_EXISTING );
        FUNC1( handle[0] != NULL, "got %u\n", FUNC0() );

        profile.dwType       = PROFILE_FILENAME;
        profile.pProfileData = testprofile;
        profile.cbDataSize   = FUNC6(testprofile);

        handle[1] = FUNC5( &profile, PROFILE_READ, 0, OPEN_EXISTING );
        FUNC1( handle[1] != NULL, "got %u\n", FUNC0() );

        transform = FUNC3( handle, 2, intents, 2, 0, 0 );
        FUNC1( transform != NULL, "got %u\n", FUNC0() );

        FUNC4( transform );
        FUNC2( handle[0] );
        FUNC2( handle[1] );
    }
}