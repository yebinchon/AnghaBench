
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int drive_c2 ;
typedef int drive_c1 ;
typedef char WCHAR ;
typedef int BOOL ;


 scalar_t__ ERROR_FILENAME_EXCED_RANGE ;
 scalar_t__ GetLastError () ;
 int MAX_PATH ;
 scalar_t__ broken (int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int ok (int,char*,...) ;
 int pGetVolumePathNameW (char*,char*,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetVolumePathNameW(void)
{
    static WCHAR drive_c1[] = {'C',':',0};
    static WCHAR drive_c2[] = {'C',':','\\',0};
    WCHAR volume_path[MAX_PATH];
    BOOL ret;

    if (!pGetVolumePathNameW)
    {
        win_skip("required functions not found\n");
        return;
    }

    volume_path[0] = 0;
    volume_path[1] = 0x11;
    ret = pGetVolumePathNameW( drive_c1, volume_path, 1 );
    ok(!ret, "GetVolumePathNameW test succeeded unexpectedly.\n");
    ok(GetLastError() == ERROR_FILENAME_EXCED_RANGE, "GetVolumePathNameW unexpectedly returned error 0x%x (expected 0x%x).\n",
        GetLastError(), ERROR_FILENAME_EXCED_RANGE);
    ok(volume_path[1] == 0x11, "GetVolumePathW corrupted byte after end of buffer.\n");

    volume_path[0] = 0;
    volume_path[2] = 0x11;
    ret = pGetVolumePathNameW( drive_c1, volume_path, 2 );
    ok(!ret, "GetVolumePathNameW test succeeded unexpectedly.\n");
    ok(GetLastError() == ERROR_FILENAME_EXCED_RANGE, "GetVolumePathNameW unexpectedly returned error 0x%x (expected 0x%x).\n",
        GetLastError(), ERROR_FILENAME_EXCED_RANGE);
    ok(volume_path[2] == 0x11, "GetVolumePathW corrupted byte after end of buffer.\n");

    volume_path[0] = 0;
    volume_path[3] = 0x11;
    ret = pGetVolumePathNameW( drive_c1, volume_path, 3 );
    ok(ret || broken(!ret) , "GetVolumePathNameW test failed unexpectedly.\n");
    ok(memcmp(volume_path, drive_c1, sizeof(drive_c1)) == 0
       || broken(volume_path[0] == 0) ,
       "GetVolumePathNameW unexpectedly returned wrong path.\n");
    ok(volume_path[3] == 0x11, "GetVolumePathW corrupted byte after end of buffer.\n");

    volume_path[0] = 0;
    volume_path[4] = 0x11;
    ret = pGetVolumePathNameW( drive_c1, volume_path, 4 );
    ok(ret, "GetVolumePathNameW test failed unexpectedly.\n");
    ok(memcmp(volume_path, drive_c2, sizeof(drive_c2)) == 0, "GetVolumePathNameW unexpectedly returned wrong path.\n");
    ok(volume_path[4] == 0x11, "GetVolumePathW corrupted byte after end of buffer.\n");
}
