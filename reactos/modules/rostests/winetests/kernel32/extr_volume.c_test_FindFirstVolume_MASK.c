#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 char* ERROR_FILENAME_EXCED_RANGE ; 
 char* ERROR_MORE_DATA ; 
 char* ERROR_NO_MORE_FILES ; 
 char* FUNC0 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    char volume[51];
    HANDLE handle;

    /* not present before w2k */
    if (!&pFindFirstVolumeA) {
        FUNC7("FindFirstVolumeA not found\n");
        return;
    }

    handle = FUNC3( volume, 0 );
    FUNC2( handle == INVALID_HANDLE_VALUE, "succeeded with short buffer\n" );
    FUNC2( FUNC0() == ERROR_MORE_DATA ||  /* XP */
        FUNC0() == ERROR_FILENAME_EXCED_RANGE,  /* Vista */
        "wrong error %u\n", FUNC0() );
    handle = FUNC3( volume, 49 );
    FUNC2( handle == INVALID_HANDLE_VALUE, "succeeded with short buffer\n" );
    FUNC2( FUNC0() == ERROR_FILENAME_EXCED_RANGE, "wrong error %u\n", FUNC0() );
    handle = FUNC3( volume, 51 );
    FUNC2( handle != INVALID_HANDLE_VALUE, "failed err %u\n", FUNC0() );
    if (handle != INVALID_HANDLE_VALUE)
    {
        do
        {
            FUNC2( FUNC6(volume) == 49, "bad volume name %s\n", volume );
            FUNC2( !FUNC1( volume, "\\\\?\\Volume{", 11 ), "bad volume name %s\n", volume );
            FUNC2( !FUNC1( volume + 47, "}\\", 2 ), "bad volume name %s\n", volume );
        } while (FUNC4( handle, volume, MAX_PATH ));
        FUNC2( FUNC0() == ERROR_NO_MORE_FILES, "wrong error %u\n", FUNC0() );
        FUNC5( handle );
    }
}