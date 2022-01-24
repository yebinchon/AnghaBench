#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int QuadPart; } ;
typedef  TYPE_1__ ULARGE_INTEGER ;
typedef  scalar_t__ UINT ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ DRIVE_NO_ROOT_DIR ; 
 scalar_t__ DRIVE_REMOVABLE ; 
 scalar_t__ ERROR_INVALID_DRIVE ; 
 scalar_t__ ERROR_INVALID_NAME ; 
 scalar_t__ ERROR_PATH_NOT_FOUND ; 
 int FUNC0 (char*,int*,int*,int*,int*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int FUNC6 (char*,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(void)
{
    BOOL ret;
    DWORD sectors_per_cluster, bytes_per_sector, free_clusters, total_clusters;
    char drive[] = "?:\\";
    DWORD logical_drives;

    ret = FUNC0(NULL, &sectors_per_cluster, &bytes_per_sector, &free_clusters, &total_clusters);
    FUNC5(ret, "GetDiskFreeSpaceA error %d\n", FUNC2());

    ret = FUNC0("", &sectors_per_cluster, &bytes_per_sector, &free_clusters, &total_clusters);
    FUNC5(!ret && (FUNC2() == ERROR_PATH_NOT_FOUND || FUNC2() == ERROR_INVALID_NAME),
       "GetDiskFreeSpaceA(\"\"): ret=%d GetLastError=%d\n",
       ret, FUNC2());

    ret = FUNC0("\\", &sectors_per_cluster, &bytes_per_sector, &free_clusters, &total_clusters);
    FUNC5(ret, "GetDiskFreeSpaceA error %d\n", FUNC2());

    ret = FUNC0("/", &sectors_per_cluster, &bytes_per_sector, &free_clusters, &total_clusters);
    FUNC5(ret, "GetDiskFreeSpaceA error %d\n", FUNC2());

    logical_drives = FUNC3();
    FUNC5(logical_drives != 0, "GetLogicalDrives error %d\n", FUNC2());

    for (drive[0] = 'A'; drive[0] <= 'Z'; drive[0]++)
    {
        UINT drivetype = FUNC1(drive);
        /* Skip floppy drives because NT pops up a MessageBox if no
         * floppy is present
         */
        if (drivetype != DRIVE_REMOVABLE && drivetype != DRIVE_NO_ROOT_DIR)
        {
            ret = FUNC0(drive, &sectors_per_cluster, &bytes_per_sector, &free_clusters, &total_clusters);
            if (!(logical_drives & 1))
                FUNC5(!ret && (FUNC2() == ERROR_PATH_NOT_FOUND || FUNC2() == ERROR_INVALID_DRIVE),
                   "GetDiskFreeSpaceA(%s): ret=%d GetLastError=%d\n",
                   drive, ret, FUNC2());
            else
            {

                if (!ret)
                    /* GetDiskFreeSpaceA() should succeed, but it can fail with too many
                       different GetLastError() results to be usable for an ok() */
                    FUNC7("GetDiskFreeSpaceA(%s) failed with %d\n", drive, FUNC2());

                if( FUNC4() & 0x80000000)
                    /* win3.0 through winME */
                    FUNC5( total_clusters <= 65535,
                            "total clusters is %d > 65535\n", total_clusters);
                else if (&pGetDiskFreeSpaceExA) {
                    /* NT, 2k, XP : GetDiskFreeSpace should be accurate */
                    ULARGE_INTEGER totEx, tot, d;

                    tot.QuadPart = sectors_per_cluster;
                    tot.QuadPart = (tot.QuadPart * bytes_per_sector) * total_clusters;
                    ret = FUNC6( drive, &d, &totEx, NULL);

                    if (!ret)
                        /* GetDiskFreeSpaceExA() should succeed, but it can fail with too many
                           different GetLastError() results to be usable for an ok() */
                        FUNC7("GetDiskFreeSpaceExA(%s) failed with %d\n", drive, FUNC2());

                    FUNC5( bytes_per_sector == 0 || /* empty cd rom drive */
                        totEx.QuadPart <= tot.QuadPart,
                        "GetDiskFreeSpaceA should report at least as much bytes on disk %s as GetDiskFreeSpaceExA\n", drive);
                }
            }
        }
        logical_drives >>= 1;
    }
}