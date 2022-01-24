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
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_FILENAME_EXCED_RANGE ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  ERROR_INVALID_FUNCTION ; 
 int /*<<< orphan*/  ERROR_INVALID_NAME ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERROR_NOT_A_REPARSE_POINT ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int,char*) ; 
 int MAX_PATH ; 
 scalar_t__ FUNC2 (char*,char*,scalar_t__) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 scalar_t__ FUNC4 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    BOOL ret;
    char volume[MAX_PATH], path[] = "c:\\";
    DWORD len = sizeof(volume), reti;
    char temp_path[MAX_PATH];

    /* not present before w2k */
    if (!&pGetVolumeNameForVolumeMountPointA) {
        FUNC6("GetVolumeNameForVolumeMountPointA not found\n");
        return;
    }

    reti = FUNC1(MAX_PATH, temp_path);
    FUNC3(reti != 0, "GetTempPathA error %d\n", FUNC0());
    FUNC3(reti < MAX_PATH, "temp path should fit into MAX_PATH\n");

    ret = FUNC4(path, volume, 0);
    FUNC3(ret == FALSE, "GetVolumeNameForVolumeMountPointA succeeded\n");
    FUNC3(FUNC0() == ERROR_FILENAME_EXCED_RANGE ||
        FUNC0() == ERROR_INVALID_PARAMETER, /* Vista */
        "wrong error, last=%d\n", FUNC0());

    if (0) { /* these crash on XP */
    ret = FUNC4(path, NULL, len);
    FUNC3(ret == FALSE, "GetVolumeNameForVolumeMountPointA succeeded\n");

    ret = FUNC4(NULL, volume, len);
    FUNC3(ret == FALSE, "GetVolumeNameForVolumeMountPointA succeeded\n");
    }

    ret = FUNC4(path, volume, len);
    FUNC3(ret == TRUE, "GetVolumeNameForVolumeMountPointA failed\n");
    FUNC3(!FUNC5( volume, "\\\\?\\Volume{", 11),
        "GetVolumeNameForVolumeMountPointA failed to return valid string <%s>\n",
        volume);

    /* test with too small buffer */
    ret = FUNC4(path, volume, 10);
    FUNC3(ret == FALSE && FUNC0() == ERROR_FILENAME_EXCED_RANGE,
            "GetVolumeNameForVolumeMountPointA failed, wrong error returned, was %d, should be ERROR_FILENAME_EXCED_RANGE\n",
             FUNC0());

    /* Try on an arbitrary directory */
    /* On FAT filesystems it seems that GetLastError() is set to
       ERROR_INVALID_FUNCTION. */
    ret = FUNC4(temp_path, volume, len);
    FUNC3(ret == FALSE && (FUNC0() == ERROR_NOT_A_REPARSE_POINT ||
        FUNC0() == ERROR_INVALID_FUNCTION),
        "GetVolumeNameForVolumeMountPointA failed on %s, last=%d\n",
        temp_path, FUNC0());

    /* Try on a nonexistent dos drive */
    path[2] = 0;
    for (;path[0] <= 'z'; path[0]++) {
        ret = FUNC2( path, volume, len);
        if(!ret) break;
    }
    if (path[0] <= 'z')
    {
        path[2] = '\\';
        ret = FUNC4(path, volume, len);
        FUNC3(ret == FALSE && FUNC0() == ERROR_FILE_NOT_FOUND,
            "GetVolumeNameForVolumeMountPointA failed on %s, last=%d\n",
            path, FUNC0());

        /* Try without trailing \ and on a nonexistent dos drive  */
        path[2] = 0;
        ret = FUNC4(path, volume, len);
        FUNC3(ret == FALSE && FUNC0() == ERROR_INVALID_NAME,
            "GetVolumeNameForVolumeMountPointA failed on %s, last=%d\n",
            path, FUNC0());
    }
}