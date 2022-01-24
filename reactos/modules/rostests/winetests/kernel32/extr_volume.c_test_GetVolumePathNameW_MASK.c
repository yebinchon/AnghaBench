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
typedef  int /*<<< orphan*/  drive_c2 ;
typedef  int /*<<< orphan*/  drive_c1 ;
typedef  char WCHAR ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_FILENAME_EXCED_RANGE ; 
 scalar_t__ FUNC0 () ; 
 int MAX_PATH ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    static WCHAR drive_c1[] = {'C',':',0};
    static WCHAR drive_c2[] = {'C',':','\\',0};
    WCHAR volume_path[MAX_PATH];
    BOOL ret;

    if (!&pGetVolumePathNameW)
    {
        FUNC5("required functions not found\n");
        return;
    }

    volume_path[0] = 0;
    volume_path[1] = 0x11;
    ret = FUNC4( drive_c1, volume_path, 1 );
    FUNC3(!ret, "GetVolumePathNameW test succeeded unexpectedly.\n");
    FUNC3(FUNC0() == ERROR_FILENAME_EXCED_RANGE, "GetVolumePathNameW unexpectedly returned error 0x%x (expected 0x%x).\n",
        FUNC0(), ERROR_FILENAME_EXCED_RANGE);
    FUNC3(volume_path[1] == 0x11, "GetVolumePathW corrupted byte after end of buffer.\n");

    volume_path[0] = 0;
    volume_path[2] = 0x11;
    ret = FUNC4( drive_c1, volume_path, 2 );
    FUNC3(!ret, "GetVolumePathNameW test succeeded unexpectedly.\n");
    FUNC3(FUNC0() == ERROR_FILENAME_EXCED_RANGE, "GetVolumePathNameW unexpectedly returned error 0x%x (expected 0x%x).\n",
        FUNC0(), ERROR_FILENAME_EXCED_RANGE);
    FUNC3(volume_path[2] == 0x11, "GetVolumePathW corrupted byte after end of buffer.\n");

    volume_path[0] = 0;
    volume_path[3] = 0x11;
    ret = FUNC4( drive_c1, volume_path, 3 );
    FUNC3(ret || FUNC1(!ret) /* win2k */, "GetVolumePathNameW test failed unexpectedly.\n");
    FUNC3(FUNC2(volume_path, drive_c1, sizeof(drive_c1)) == 0
       || FUNC1(volume_path[0] == 0) /* win2k */,
       "GetVolumePathNameW unexpectedly returned wrong path.\n");
    FUNC3(volume_path[3] == 0x11, "GetVolumePathW corrupted byte after end of buffer.\n");

    volume_path[0] = 0;
    volume_path[4] = 0x11;
    ret = FUNC4( drive_c1, volume_path, 4 );
    FUNC3(ret, "GetVolumePathNameW test failed unexpectedly.\n");
    FUNC3(FUNC2(volume_path, drive_c2, sizeof(drive_c2)) == 0, "GetVolumePathNameW unexpectedly returned wrong path.\n");
    FUNC3(volume_path[4] == 0x11, "GetVolumePathW corrupted byte after end of buffer.\n");
}