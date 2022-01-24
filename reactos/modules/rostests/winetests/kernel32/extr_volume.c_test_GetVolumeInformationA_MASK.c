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
typedef  int /*<<< orphan*/  windowsdir ;
typedef  int UINT ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_DIR_NOT_ROOT ; 
 int /*<<< orphan*/  ERROR_INVALID_NAME ; 
 int FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*,int) ; 
 int MAX_PATH ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int FUNC7 (char*,char*,int,int*,int*,int*,char*,int) ; 
 int FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(void)
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

    FUNC6( &pGetVolumeInformationA != NULL, "GetVolumeInformationA not found\n");
    if(!&pGetVolumeInformationA) {
        return;
    }

    /* get windows drive letter and update strings for testing */
    result = FUNC2(windowsdir, sizeof(windowsdir));
    FUNC6(result < sizeof(windowsdir), "windowsdir is abnormally long!\n");
    FUNC6(result != 0, "GetWindowsDirectory: error %d\n", FUNC1());
    Root_Colon[0] = windowsdir[0];
    Root_Slash[0] = windowsdir[0];
    Root_UNC[4] = windowsdir[0];

    result = FUNC0(MAX_PATH, currentdir);
    FUNC6(result, "GetCurrentDirectory: error %d\n", FUNC1());
    /* Note that GetCurrentDir yields no trailing slash for subdirs */

    /* check for NO error on no trailing \ when current dir is root dir */
    ret = FUNC3(Root_Slash);
    FUNC6(ret, "SetCurrentDirectory: error %d\n", FUNC1());
    ret = FUNC7(Root_Colon, vol_name_buf, vol_name_size, NULL,
            NULL, NULL, fs_name_buf, fs_name_len);
    FUNC6(ret, "GetVolumeInformationA root failed, last error %u\n", FUNC1());

    /* check for error on no trailing \ when current dir is subdir (windows) of queried drive */
    ret = FUNC3(windowsdir);
    FUNC6(ret, "SetCurrentDirectory: error %d\n", FUNC1());
    FUNC5(0xdeadbeef);
    ret = FUNC7(Root_Colon, vol_name_buf, vol_name_size, NULL,
            NULL, NULL, fs_name_buf, fs_name_len);
    FUNC6(!ret && (FUNC1() == ERROR_INVALID_NAME),
        "GetVolumeInformationA did%s fail, last error %u\n", ret ? " not":"", FUNC1());

    /* reset current directory */
    ret = FUNC3(currentdir);
    FUNC6(ret, "SetCurrentDirectory: error %d\n", FUNC1());

    if (FUNC12(currentdir[0]) == FUNC12(windowsdir[0])) {
        FUNC9("Please re-run from another device than %c:\n", windowsdir[0]);
        /* FIXME: Use GetLogicalDrives to find another device to avoid this skip. */
    } else {
        char Root_Env[]="=C:"; /* where MS maintains the per volume directory */
        Root_Env[1] = windowsdir[0];

        /* C:\windows becomes the current directory on drive C: */
        /* Note that paths to subdirs are stored without trailing slash, like what GetCurrentDir yields. */
        ret = FUNC4(Root_Env, windowsdir);
        FUNC6(ret, "SetEnvironmentVariable %s failed\n", Root_Env);

        ret = FUNC3(windowsdir);
        FUNC6(ret, "SetCurrentDirectory: error %d\n", FUNC1());
        ret = FUNC3(currentdir);
        FUNC6(ret, "SetCurrentDirectory: error %d\n", FUNC1());

        /* windows dir is current on the root drive, call fails */
        FUNC5(0xdeadbeef);
        ret = FUNC7(Root_Colon, vol_name_buf, vol_name_size, NULL,
                NULL, NULL, fs_name_buf, fs_name_len);
        FUNC6(!ret && (FUNC1() == ERROR_INVALID_NAME),
           "GetVolumeInformationA did%s fail, last error %u\n", ret ? " not":"", FUNC1());

        /* Try normal drive letter with trailing \ */
        ret = FUNC7(Root_Slash, vol_name_buf, vol_name_size, NULL,
                NULL, NULL, fs_name_buf, fs_name_len);
        FUNC6(ret, "GetVolumeInformationA with \\ failed, last error %u\n", FUNC1());

        ret = FUNC3(Root_Slash);
        FUNC6(ret, "SetCurrentDirectory: error %d\n", FUNC1());
        ret = FUNC3(currentdir);
        FUNC6(ret, "SetCurrentDirectory: error %d\n", FUNC1());

        /* windows dir is STILL CURRENT on root drive; the call fails as before,   */
        /* proving that SetCurrentDir did not remember the other drive's directory */
        FUNC5(0xdeadbeef);
        ret = FUNC7(Root_Colon, vol_name_buf, vol_name_size, NULL,
                NULL, NULL, fs_name_buf, fs_name_len);
        FUNC6(!ret && (FUNC1() == ERROR_INVALID_NAME),
           "GetVolumeInformationA did%s fail, last error %u\n", ret ? " not":"", FUNC1());

        /* Now C:\ becomes the current directory on drive C: */
        ret = FUNC4(Root_Env, Root_Slash); /* set =C:=C:\ */
        FUNC6(ret, "SetEnvironmentVariable %s failed\n", Root_Env);

        /* \ is current on root drive, call succeeds */
        ret = FUNC7(Root_Colon, vol_name_buf, vol_name_size, NULL,
                NULL, NULL, fs_name_buf, fs_name_len);
        FUNC6(ret, "GetVolumeInformationA failed, last error %u\n", FUNC1());

        /* again, SetCurrentDirectory on another drive does not matter */
        ret = FUNC3(Root_Slash);
        FUNC6(ret, "SetCurrentDirectory: error %d\n", FUNC1());
        ret = FUNC3(currentdir);
        FUNC6(ret, "SetCurrentDirectory: error %d\n", FUNC1());

        /* \ is current on root drive, call succeeds */
        ret = FUNC7(Root_Colon, vol_name_buf, vol_name_size, NULL,
                NULL, NULL, fs_name_buf, fs_name_len);
        FUNC6(ret, "GetVolumeInformationA failed, last error %u\n", FUNC1());
    }

    /* try null root directory to return "root of the current directory"  */
    ret = FUNC7(NULL, vol_name_buf, vol_name_size, NULL,
            NULL, NULL, fs_name_buf, fs_name_len);
    FUNC6(ret, "GetVolumeInformationA failed on null root dir, last error %u\n", FUNC1());

    /* Try normal drive letter with trailing \  */
    ret = FUNC7(Root_Slash, vol_name_buf, vol_name_size,
            &vol_serial_num, &max_comp_len, &fs_flags, fs_name_buf, fs_name_len);
    FUNC6(ret, "GetVolumeInformationA failed, root=%s, last error=%u\n", Root_Slash, FUNC1());

    /* try again with drive letter and the "disable parsing" prefix */
    FUNC5(0xdeadbeef);
    ret = FUNC7(Root_UNC, vol_name_buf, vol_name_size,
            &vol_serial_num, &max_comp_len, &fs_flags, fs_name_buf, fs_name_len);
    FUNC6(ret, "GetVolumeInformationA did%s fail, root=%s, last error=%u\n", ret ? " not":"", Root_UNC, FUNC1());

    /* try again with device name space  */
    Root_UNC[2] = '.';
    FUNC5(0xdeadbeef);
    ret = FUNC7(Root_UNC, vol_name_buf, vol_name_size,
            &vol_serial_num, &max_comp_len, &fs_flags, fs_name_buf, fs_name_len);
    FUNC6(ret, "GetVolumeInformationA did%s fail, root=%s, last error=%u\n", ret ? " not":"", Root_UNC, FUNC1());

    /* try again with a directory off the root - should generate error  */
    if (windowsdir[FUNC11(windowsdir)-1] != '\\') FUNC10(windowsdir, "\\");
    FUNC5(0xdeadbeef);
    ret = FUNC7(windowsdir, vol_name_buf, vol_name_size,
            &vol_serial_num, &max_comp_len, &fs_flags, fs_name_buf, fs_name_len);
    FUNC6(!ret && (FUNC1()==ERROR_DIR_NOT_ROOT),
          "GetVolumeInformationA did%s fail, root=%s, last error=%u\n", ret ? " not":"", windowsdir, FUNC1());
    /* A subdir with trailing \ yields DIR_NOT_ROOT instead of INVALID_NAME */
    if (windowsdir[FUNC11(windowsdir)-1] == '\\') windowsdir[FUNC11(windowsdir)-1] = 0;
    FUNC5(0xdeadbeef);
    ret = FUNC7(windowsdir, vol_name_buf, vol_name_size,
            &vol_serial_num, &max_comp_len, &fs_flags, fs_name_buf, fs_name_len);
    FUNC6(!ret && (FUNC1()==ERROR_INVALID_NAME),
          "GetVolumeInformationA did%s fail, root=%s, last error=%u\n", ret ? " not":"", windowsdir, FUNC1());

    if (!&pGetVolumeNameForVolumeMountPointA) {
        FUNC13("GetVolumeNameForVolumeMountPointA not found\n");
        return;
    }
    /* get the unique volume name for the windows drive  */
    ret = FUNC8(Root_Slash, volume, MAX_PATH);
    FUNC6(ret == TRUE, "GetVolumeNameForVolumeMountPointA failed\n");

    /* try again with unique volume name */
    ret = FUNC7(volume, vol_name_buf, vol_name_size,
            &vol_serial_num, &max_comp_len, &fs_flags, fs_name_buf, fs_name_len);
    FUNC6(ret, "GetVolumeInformationA failed, root=%s, last error=%u\n", volume, FUNC1());
}