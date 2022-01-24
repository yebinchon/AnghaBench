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
struct TYPE_3__ {char* pProfileData; int /*<<< orphan*/  cbDataSize; int /*<<< orphan*/  dwType; } ;
typedef  int TAGTYPE ;
typedef  TYPE_1__ PROFILE ;
typedef  int /*<<< orphan*/ * HPROFILE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  PROFILE_FILENAME ; 
 int /*<<< orphan*/  PROFILE_READ ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6( char *standardprofile )
{
    if (standardprofile)
    {
        PROFILE profile;
        HPROFILE handle;
        BOOL ret, present;
        TAGTYPE tag;

        profile.dwType = PROFILE_FILENAME;
        profile.pProfileData = standardprofile;
        profile.cbDataSize = FUNC5(standardprofile);

        handle = FUNC4( &profile, PROFILE_READ, 0, OPEN_EXISTING );
        FUNC1( handle != NULL, "OpenColorProfileA() failed (%d)\n", FUNC0() );

        /* Parameter checks */

        tag = 0;

        ret = FUNC3( handle, tag, &present );
        FUNC1( !(ret && present), "IsColorProfileTagPresent() succeeded (%d)\n", FUNC0() );

        tag = 0x63707274;  /* 'cprt' */

        ret = FUNC3( NULL, tag, &present );
        FUNC1( !ret, "IsColorProfileTagPresent() succeeded (%d)\n", FUNC0() );

        ret = FUNC3( handle, tag, NULL );
        FUNC1( !ret, "IsColorProfileTagPresent() succeeded (%d)\n", FUNC0() );

        /* Functional checks */

        ret = FUNC3( handle, tag, &present );
        FUNC1( ret && present, "IsColorProfileTagPresent() failed (%d)\n", FUNC0() );

        FUNC2( handle );
    }
}