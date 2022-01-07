
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volume ;
typedef char WCHAR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_FILENAME_EXCED_RANGE ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 int MAX_PATH ;
 scalar_t__ TRUE ;
 int ok (int,char*,...) ;
 scalar_t__ pGetVolumeNameForVolumeMountPointW (char*,char*,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetVolumeNameForVolumeMountPointW(void)
{
    BOOL ret;
    WCHAR volume[MAX_PATH], path[] = {'c',':','\\',0};
    DWORD len = sizeof(volume) / sizeof(WCHAR);


    if (!pGetVolumeNameForVolumeMountPointW) {
        win_skip("GetVolumeNameForVolumeMountPointW not found\n");
        return;
    }

    ret = pGetVolumeNameForVolumeMountPointW(path, volume, 0);
    ok(ret == FALSE, "GetVolumeNameForVolumeMountPointW succeeded\n");
    ok(GetLastError() == ERROR_FILENAME_EXCED_RANGE ||
        GetLastError() == ERROR_INVALID_PARAMETER,
        "wrong error, last=%d\n", GetLastError());

    if (0) {
    ret = pGetVolumeNameForVolumeMountPointW(path, ((void*)0), len);
    ok(ret == FALSE, "GetVolumeNameForVolumeMountPointW succeeded\n");

    ret = pGetVolumeNameForVolumeMountPointW(((void*)0), volume, len);
    ok(ret == FALSE, "GetVolumeNameForVolumeMountPointW succeeded\n");
    }

    ret = pGetVolumeNameForVolumeMountPointW(path, volume, len);
    ok(ret == TRUE, "GetVolumeNameForVolumeMountPointW failed\n");
}
