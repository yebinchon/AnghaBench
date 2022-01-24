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
typedef  int /*<<< orphan*/  volume ;
typedef  char WCHAR ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_FILENAME_EXCED_RANGE ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 () ; 
 int MAX_PATH ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    BOOL ret;
    WCHAR volume[MAX_PATH], path[] = {'c',':','\\',0};
    DWORD len = sizeof(volume) / sizeof(WCHAR);

    /* not present before w2k */
    if (!&pGetVolumeNameForVolumeMountPointW) {
        FUNC3("GetVolumeNameForVolumeMountPointW not found\n");
        return;
    }

    ret = FUNC2(path, volume, 0);
    FUNC1(ret == FALSE, "GetVolumeNameForVolumeMountPointW succeeded\n");
    FUNC1(FUNC0() == ERROR_FILENAME_EXCED_RANGE ||
        FUNC0() == ERROR_INVALID_PARAMETER, /* Vista */
        "wrong error, last=%d\n", FUNC0());

    if (0) { /* these crash on XP */
    ret = FUNC2(path, NULL, len);
    FUNC1(ret == FALSE, "GetVolumeNameForVolumeMountPointW succeeded\n");

    ret = FUNC2(NULL, volume, len);
    FUNC1(ret == FALSE, "GetVolumeNameForVolumeMountPointW succeeded\n");
    }

    ret = FUNC2(path, volume, len);
    FUNC1(ret == TRUE, "GetVolumeNameForVolumeMountPointW failed\n");
}