
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volume ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int ERROR_FILENAME_EXCED_RANGE ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_INVALID_FUNCTION ;
 int ERROR_INVALID_NAME ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_NOT_A_REPARSE_POINT ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 scalar_t__ GetTempPathA (int,char*) ;
 int MAX_PATH ;
 scalar_t__ QueryDosDeviceA (char*,char*,scalar_t__) ;
 scalar_t__ TRUE ;
 int ok (int,char*,...) ;
 scalar_t__ pGetVolumeNameForVolumeMountPointA (char*,char*,scalar_t__) ;
 int strncmp (char*,char*,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetVolumeNameForVolumeMountPointA(void)
{
    BOOL ret;
    char volume[MAX_PATH], path[] = "c:\\";
    DWORD len = sizeof(volume), reti;
    char temp_path[MAX_PATH];


    if (!pGetVolumeNameForVolumeMountPointA) {
        win_skip("GetVolumeNameForVolumeMountPointA not found\n");
        return;
    }

    reti = GetTempPathA(MAX_PATH, temp_path);
    ok(reti != 0, "GetTempPathA error %d\n", GetLastError());
    ok(reti < MAX_PATH, "temp path should fit into MAX_PATH\n");

    ret = pGetVolumeNameForVolumeMountPointA(path, volume, 0);
    ok(ret == FALSE, "GetVolumeNameForVolumeMountPointA succeeded\n");
    ok(GetLastError() == ERROR_FILENAME_EXCED_RANGE ||
        GetLastError() == ERROR_INVALID_PARAMETER,
        "wrong error, last=%d\n", GetLastError());

    if (0) {
    ret = pGetVolumeNameForVolumeMountPointA(path, ((void*)0), len);
    ok(ret == FALSE, "GetVolumeNameForVolumeMountPointA succeeded\n");

    ret = pGetVolumeNameForVolumeMountPointA(((void*)0), volume, len);
    ok(ret == FALSE, "GetVolumeNameForVolumeMountPointA succeeded\n");
    }

    ret = pGetVolumeNameForVolumeMountPointA(path, volume, len);
    ok(ret == TRUE, "GetVolumeNameForVolumeMountPointA failed\n");
    ok(!strncmp( volume, "\\\\?\\Volume{", 11),
        "GetVolumeNameForVolumeMountPointA failed to return valid string <%s>\n",
        volume);


    ret = pGetVolumeNameForVolumeMountPointA(path, volume, 10);
    ok(ret == FALSE && GetLastError() == ERROR_FILENAME_EXCED_RANGE,
            "GetVolumeNameForVolumeMountPointA failed, wrong error returned, was %d, should be ERROR_FILENAME_EXCED_RANGE\n",
             GetLastError());




    ret = pGetVolumeNameForVolumeMountPointA(temp_path, volume, len);
    ok(ret == FALSE && (GetLastError() == ERROR_NOT_A_REPARSE_POINT ||
        GetLastError() == ERROR_INVALID_FUNCTION),
        "GetVolumeNameForVolumeMountPointA failed on %s, last=%d\n",
        temp_path, GetLastError());


    path[2] = 0;
    for (;path[0] <= 'z'; path[0]++) {
        ret = QueryDosDeviceA( path, volume, len);
        if(!ret) break;
    }
    if (path[0] <= 'z')
    {
        path[2] = '\\';
        ret = pGetVolumeNameForVolumeMountPointA(path, volume, len);
        ok(ret == FALSE && GetLastError() == ERROR_FILE_NOT_FOUND,
            "GetVolumeNameForVolumeMountPointA failed on %s, last=%d\n",
            path, GetLastError());


        path[2] = 0;
        ret = pGetVolumeNameForVolumeMountPointA(path, volume, len);
        ok(ret == FALSE && GetLastError() == ERROR_INVALID_NAME,
            "GetVolumeNameForVolumeMountPointA failed on %s, last=%d\n",
            path, GetLastError());
    }
}
