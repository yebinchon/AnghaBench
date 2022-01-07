
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int windowsdir ;
typedef int UINT ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_DIR_NOT_ROOT ;
 int ERROR_INVALID_NAME ;
 int GetCurrentDirectoryA (int,char*) ;
 int GetLastError () ;
 int GetWindowsDirectoryA (char*,int) ;
 int MAX_PATH ;
 int SetCurrentDirectoryA (char*) ;
 int SetEnvironmentVariableA (char*,char*) ;
 int SetLastError (int) ;
 int TRUE ;
 int ok (int,char*,...) ;
 int pGetVolumeInformationA (char*,char*,int,int*,int*,int*,char*,int) ;
 int pGetVolumeNameForVolumeMountPointA (char*,char*,int) ;
 int skip (char*,char) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ toupper (char) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetVolumeInformationA(void)
{
    BOOL ret;
    UINT result;
    char Root_Colon[]="C:";
    char Root_Slash[]="C:\\";
    char Root_UNC[]="\\\\?\\C:\\";
    char volume[MAX_PATH+1];
    DWORD vol_name_size=MAX_PATH+1, vol_serial_num=-1, max_comp_len=0, fs_flags=0, fs_name_len=MAX_PATH+1;
    char vol_name_buf[MAX_PATH+1], fs_name_buf[MAX_PATH+1];
    char windowsdir[MAX_PATH+10];
    char currentdir[MAX_PATH+1];

    ok( pGetVolumeInformationA != ((void*)0), "GetVolumeInformationA not found\n");
    if(!pGetVolumeInformationA) {
        return;
    }


    result = GetWindowsDirectoryA(windowsdir, sizeof(windowsdir));
    ok(result < sizeof(windowsdir), "windowsdir is abnormally long!\n");
    ok(result != 0, "GetWindowsDirectory: error %d\n", GetLastError());
    Root_Colon[0] = windowsdir[0];
    Root_Slash[0] = windowsdir[0];
    Root_UNC[4] = windowsdir[0];

    result = GetCurrentDirectoryA(MAX_PATH, currentdir);
    ok(result, "GetCurrentDirectory: error %d\n", GetLastError());



    ret = SetCurrentDirectoryA(Root_Slash);
    ok(ret, "SetCurrentDirectory: error %d\n", GetLastError());
    ret = pGetVolumeInformationA(Root_Colon, vol_name_buf, vol_name_size, ((void*)0),
            ((void*)0), ((void*)0), fs_name_buf, fs_name_len);
    ok(ret, "GetVolumeInformationA root failed, last error %u\n", GetLastError());


    ret = SetCurrentDirectoryA(windowsdir);
    ok(ret, "SetCurrentDirectory: error %d\n", GetLastError());
    SetLastError(0xdeadbeef);
    ret = pGetVolumeInformationA(Root_Colon, vol_name_buf, vol_name_size, ((void*)0),
            ((void*)0), ((void*)0), fs_name_buf, fs_name_len);
    ok(!ret && (GetLastError() == ERROR_INVALID_NAME),
        "GetVolumeInformationA did%s fail, last error %u\n", ret ? " not":"", GetLastError());


    ret = SetCurrentDirectoryA(currentdir);
    ok(ret, "SetCurrentDirectory: error %d\n", GetLastError());

    if (toupper(currentdir[0]) == toupper(windowsdir[0])) {
        skip("Please re-run from another device than %c:\n", windowsdir[0]);

    } else {
        char Root_Env[]="=C:";
        Root_Env[1] = windowsdir[0];



        ret = SetEnvironmentVariableA(Root_Env, windowsdir);
        ok(ret, "SetEnvironmentVariable %s failed\n", Root_Env);

        ret = SetCurrentDirectoryA(windowsdir);
        ok(ret, "SetCurrentDirectory: error %d\n", GetLastError());
        ret = SetCurrentDirectoryA(currentdir);
        ok(ret, "SetCurrentDirectory: error %d\n", GetLastError());


        SetLastError(0xdeadbeef);
        ret = pGetVolumeInformationA(Root_Colon, vol_name_buf, vol_name_size, ((void*)0),
                ((void*)0), ((void*)0), fs_name_buf, fs_name_len);
        ok(!ret && (GetLastError() == ERROR_INVALID_NAME),
           "GetVolumeInformationA did%s fail, last error %u\n", ret ? " not":"", GetLastError());


        ret = pGetVolumeInformationA(Root_Slash, vol_name_buf, vol_name_size, ((void*)0),
                ((void*)0), ((void*)0), fs_name_buf, fs_name_len);
        ok(ret, "GetVolumeInformationA with \\ failed, last error %u\n", GetLastError());

        ret = SetCurrentDirectoryA(Root_Slash);
        ok(ret, "SetCurrentDirectory: error %d\n", GetLastError());
        ret = SetCurrentDirectoryA(currentdir);
        ok(ret, "SetCurrentDirectory: error %d\n", GetLastError());



        SetLastError(0xdeadbeef);
        ret = pGetVolumeInformationA(Root_Colon, vol_name_buf, vol_name_size, ((void*)0),
                ((void*)0), ((void*)0), fs_name_buf, fs_name_len);
        ok(!ret && (GetLastError() == ERROR_INVALID_NAME),
           "GetVolumeInformationA did%s fail, last error %u\n", ret ? " not":"", GetLastError());


        ret = SetEnvironmentVariableA(Root_Env, Root_Slash);
        ok(ret, "SetEnvironmentVariable %s failed\n", Root_Env);


        ret = pGetVolumeInformationA(Root_Colon, vol_name_buf, vol_name_size, ((void*)0),
                ((void*)0), ((void*)0), fs_name_buf, fs_name_len);
        ok(ret, "GetVolumeInformationA failed, last error %u\n", GetLastError());


        ret = SetCurrentDirectoryA(Root_Slash);
        ok(ret, "SetCurrentDirectory: error %d\n", GetLastError());
        ret = SetCurrentDirectoryA(currentdir);
        ok(ret, "SetCurrentDirectory: error %d\n", GetLastError());


        ret = pGetVolumeInformationA(Root_Colon, vol_name_buf, vol_name_size, ((void*)0),
                ((void*)0), ((void*)0), fs_name_buf, fs_name_len);
        ok(ret, "GetVolumeInformationA failed, last error %u\n", GetLastError());
    }


    ret = pGetVolumeInformationA(((void*)0), vol_name_buf, vol_name_size, ((void*)0),
            ((void*)0), ((void*)0), fs_name_buf, fs_name_len);
    ok(ret, "GetVolumeInformationA failed on null root dir, last error %u\n", GetLastError());


    ret = pGetVolumeInformationA(Root_Slash, vol_name_buf, vol_name_size,
            &vol_serial_num, &max_comp_len, &fs_flags, fs_name_buf, fs_name_len);
    ok(ret, "GetVolumeInformationA failed, root=%s, last error=%u\n", Root_Slash, GetLastError());


    SetLastError(0xdeadbeef);
    ret = pGetVolumeInformationA(Root_UNC, vol_name_buf, vol_name_size,
            &vol_serial_num, &max_comp_len, &fs_flags, fs_name_buf, fs_name_len);
    ok(ret, "GetVolumeInformationA did%s fail, root=%s, last error=%u\n", ret ? " not":"", Root_UNC, GetLastError());


    Root_UNC[2] = '.';
    SetLastError(0xdeadbeef);
    ret = pGetVolumeInformationA(Root_UNC, vol_name_buf, vol_name_size,
            &vol_serial_num, &max_comp_len, &fs_flags, fs_name_buf, fs_name_len);
    ok(ret, "GetVolumeInformationA did%s fail, root=%s, last error=%u\n", ret ? " not":"", Root_UNC, GetLastError());


    if (windowsdir[strlen(windowsdir)-1] != '\\') strcat(windowsdir, "\\");
    SetLastError(0xdeadbeef);
    ret = pGetVolumeInformationA(windowsdir, vol_name_buf, vol_name_size,
            &vol_serial_num, &max_comp_len, &fs_flags, fs_name_buf, fs_name_len);
    ok(!ret && (GetLastError()==ERROR_DIR_NOT_ROOT),
          "GetVolumeInformationA did%s fail, root=%s, last error=%u\n", ret ? " not":"", windowsdir, GetLastError());

    if (windowsdir[strlen(windowsdir)-1] == '\\') windowsdir[strlen(windowsdir)-1] = 0;
    SetLastError(0xdeadbeef);
    ret = pGetVolumeInformationA(windowsdir, vol_name_buf, vol_name_size,
            &vol_serial_num, &max_comp_len, &fs_flags, fs_name_buf, fs_name_len);
    ok(!ret && (GetLastError()==ERROR_INVALID_NAME),
          "GetVolumeInformationA did%s fail, root=%s, last error=%u\n", ret ? " not":"", windowsdir, GetLastError());

    if (!pGetVolumeNameForVolumeMountPointA) {
        win_skip("GetVolumeNameForVolumeMountPointA not found\n");
        return;
    }

    ret = pGetVolumeNameForVolumeMountPointA(Root_Slash, volume, MAX_PATH);
    ok(ret == TRUE, "GetVolumeNameForVolumeMountPointA failed\n");


    ret = pGetVolumeInformationA(volume, vol_name_buf, vol_name_size,
            &vol_serial_num, &max_comp_len, &fs_flags, fs_name_buf, fs_name_len);
    ok(ret, "GetVolumeInformationA failed, root=%s, last error=%u\n", volume, GetLastError());
}
