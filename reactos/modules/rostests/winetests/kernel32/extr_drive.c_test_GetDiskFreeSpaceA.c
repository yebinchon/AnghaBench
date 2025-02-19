
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
typedef scalar_t__ UINT ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ DRIVE_NO_ROOT_DIR ;
 scalar_t__ DRIVE_REMOVABLE ;
 scalar_t__ ERROR_INVALID_DRIVE ;
 scalar_t__ ERROR_INVALID_NAME ;
 scalar_t__ ERROR_PATH_NOT_FOUND ;
 int GetDiskFreeSpaceA (char*,int*,int*,int*,int*) ;
 scalar_t__ GetDriveTypeA (char*) ;
 scalar_t__ GetLastError () ;
 int GetLogicalDrives () ;
 int GetVersion () ;
 int ok (int,char*,...) ;
 int pGetDiskFreeSpaceExA (char*,TYPE_1__*,TYPE_1__*,int *) ;
 int trace (char*,char*,scalar_t__) ;

__attribute__((used)) static void test_GetDiskFreeSpaceA(void)
{
    BOOL ret;
    DWORD sectors_per_cluster, bytes_per_sector, free_clusters, total_clusters;
    char drive[] = "?:\\";
    DWORD logical_drives;

    ret = GetDiskFreeSpaceA(((void*)0), &sectors_per_cluster, &bytes_per_sector, &free_clusters, &total_clusters);
    ok(ret, "GetDiskFreeSpaceA error %d\n", GetLastError());

    ret = GetDiskFreeSpaceA("", &sectors_per_cluster, &bytes_per_sector, &free_clusters, &total_clusters);
    ok(!ret && (GetLastError() == ERROR_PATH_NOT_FOUND || GetLastError() == ERROR_INVALID_NAME),
       "GetDiskFreeSpaceA(\"\"): ret=%d GetLastError=%d\n",
       ret, GetLastError());

    ret = GetDiskFreeSpaceA("\\", &sectors_per_cluster, &bytes_per_sector, &free_clusters, &total_clusters);
    ok(ret, "GetDiskFreeSpaceA error %d\n", GetLastError());

    ret = GetDiskFreeSpaceA("/", &sectors_per_cluster, &bytes_per_sector, &free_clusters, &total_clusters);
    ok(ret, "GetDiskFreeSpaceA error %d\n", GetLastError());

    logical_drives = GetLogicalDrives();
    ok(logical_drives != 0, "GetLogicalDrives error %d\n", GetLastError());

    for (drive[0] = 'A'; drive[0] <= 'Z'; drive[0]++)
    {
        UINT drivetype = GetDriveTypeA(drive);



        if (drivetype != DRIVE_REMOVABLE && drivetype != DRIVE_NO_ROOT_DIR)
        {
            ret = GetDiskFreeSpaceA(drive, &sectors_per_cluster, &bytes_per_sector, &free_clusters, &total_clusters);
            if (!(logical_drives & 1))
                ok(!ret && (GetLastError() == ERROR_PATH_NOT_FOUND || GetLastError() == ERROR_INVALID_DRIVE),
                   "GetDiskFreeSpaceA(%s): ret=%d GetLastError=%d\n",
                   drive, ret, GetLastError());
            else
            {

                if (!ret)


                    trace("GetDiskFreeSpaceA(%s) failed with %d\n", drive, GetLastError());

                if( GetVersion() & 0x80000000)

                    ok( total_clusters <= 65535,
                            "total clusters is %d > 65535\n", total_clusters);
                else if (pGetDiskFreeSpaceExA) {

                    ULARGE_INTEGER totEx, tot, d;

                    tot.QuadPart = sectors_per_cluster;
                    tot.QuadPart = (tot.QuadPart * bytes_per_sector) * total_clusters;
                    ret = pGetDiskFreeSpaceExA( drive, &d, &totEx, ((void*)0));

                    if (!ret)


                        trace("GetDiskFreeSpaceExA(%s) failed with %d\n", drive, GetLastError());

                    ok( bytes_per_sector == 0 ||
                        totEx.QuadPart <= tot.QuadPart,
                        "GetDiskFreeSpaceA should report at least as much bytes on disk %s as GetDiskFreeSpaceExA\n", drive);
                }
            }
        }
        logical_drives >>= 1;
    }
}
