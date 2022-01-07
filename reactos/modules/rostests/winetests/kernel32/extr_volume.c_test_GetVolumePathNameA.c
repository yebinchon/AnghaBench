
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int volume_path ;
typedef int test_paths ;
typedef int cwd ;
typedef int UINT ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_FILENAME_EXCED_RANGE ;
 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_INVALID_NAME ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_MORE_DATA ;
 int ExpandEnvironmentStringsA (char const*,char*,int) ;
 scalar_t__ GetCurrentDirectoryA (int,char*) ;
 scalar_t__ GetLastError () ;
 int MAX_PATH ;
 scalar_t__ NO_ERROR ;
 scalar_t__ SetEnvironmentVariableA (char*,char*) ;
 int SetLastError (int) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 scalar_t__ pGetVolumePathNameA (char const*,char*,size_t) ;
 scalar_t__ strcasecmp (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_GetVolumePathNameA(void)
{
    char volume_path[MAX_PATH], cwd[MAX_PATH];
    struct {
        const char *file_name;
        const char *path_name;
        DWORD path_len;
        DWORD error;
        DWORD broken_error;
    } test_paths[] = {
        {
            ((void*)0), ((void*)0), 0,
            ERROR_INVALID_PARAMETER, 0xdeadbeef
        },
        {
            "", ((void*)0), 0,
            ERROR_INVALID_PARAMETER, 0xdeadbeef
        },
        {
            "C:\\", ((void*)0), 0,
            ERROR_INVALID_PARAMETER, ERROR_FILENAME_EXCED_RANGE
        },
        {
            "C:\\", "C:\\", 0,
            ERROR_INVALID_PARAMETER, ERROR_FILENAME_EXCED_RANGE
        },
        {
            "C:\\", "C:\\", 1,
            ERROR_FILENAME_EXCED_RANGE, NO_ERROR
        },
        {
            "C:\\", "C:\\", sizeof(volume_path),
            NO_ERROR, NO_ERROR
        },
        {
            "c:\\", "C:\\", sizeof(volume_path),
            NO_ERROR, NO_ERROR
        },
        {
            "C::", "C:\\", sizeof(volume_path),
            NO_ERROR, NO_ERROR
        },
        {
            "\\\\$$$", "C:\\", 1,
            ERROR_INVALID_NAME, ERROR_FILENAME_EXCED_RANGE
        },
        {
            "C:\\windows\\system32", "C:\\", sizeof(volume_path),
            NO_ERROR, NO_ERROR
        },
        {
            "C:\\windows\\system32\\AnInvalidFolder", "C:\\", sizeof(volume_path),
            NO_ERROR, NO_ERROR
        },
        {
            "\\\\?\\C:\\AnInvalidFolder", "\\\\?\\C:\\", sizeof(volume_path),
            NO_ERROR, NO_ERROR
        },
        {
            "\\\\?\\InvalidDrive:\\AnInvalidFolder", "\\\\?\\InvalidDrive:\\" ,
            sizeof(volume_path),
            ERROR_INVALID_NAME, NO_ERROR
        },
        {
            "\\\\?\\Volume{00000000-00-0000-0000-000000000000}\\AnInvalidFolder",
            "\\\\?\\Volume{00000000-00-0000-0000-000000000000}\\" ,
            sizeof(volume_path),
            ERROR_INVALID_NAME, NO_ERROR
        },
        {
            "\\\\ReallyBogus\\InvalidDrive:\\AnInvalidFolder",
            "\\\\ReallyBogus\\InvalidDrive:\\" , sizeof(volume_path),
            ERROR_INVALID_NAME, NO_ERROR
        },
        {
            "C::", "C:\\", 4,
            NO_ERROR, ERROR_MORE_DATA
        },
        {
            "M::", "C:\\", 4,
            ERROR_FILE_NOT_FOUND, ERROR_MORE_DATA
        },
        {
            "InvalidDrive:\\AnInvalidFolder", "%CurrentDrive%\\", sizeof(volume_path),
            NO_ERROR, NO_ERROR
        },
        {
            "\\??\\CdRom0", "%CurrentDrive%\\", sizeof(volume_path),
            NO_ERROR, NO_ERROR
        },
        {
            "\\??\\ReallyBogus", "%CurrentDrive%\\", sizeof(volume_path),
            NO_ERROR, NO_ERROR
        },
        {
            "C:", "C:", 2,
            ERROR_FILENAME_EXCED_RANGE, NO_ERROR
        },
        {
            "C:", "C:", 3,
            NO_ERROR, ERROR_FILENAME_EXCED_RANGE
        },
        {
            "C:\\", "C:", 2,
            ERROR_FILENAME_EXCED_RANGE, NO_ERROR
        },
        {
            "C:\\", "C:", 3,
            NO_ERROR, ERROR_FILENAME_EXCED_RANGE
        },
        {
            "C::", "C:", 2,
            ERROR_FILENAME_EXCED_RANGE, NO_ERROR
        },
        {
            "C::", "C:", 3,
            NO_ERROR, ERROR_FILENAME_EXCED_RANGE
        },
        {
            "C::", "C:\\", 4,
            NO_ERROR, ERROR_MORE_DATA
        },
        {
            "C:\\windows\\system32\\AnInvalidFolder", "C:", 3,
            NO_ERROR, ERROR_FILENAME_EXCED_RANGE
        },
        {
            "\\\\?\\C:\\AnInvalidFolder", "\\\\?\\C:", 3,
            ERROR_FILENAME_EXCED_RANGE, NO_ERROR
        },
        {
            "\\\\?\\C:\\AnInvalidFolder", "\\\\?\\C:", 6,
            ERROR_FILENAME_EXCED_RANGE, NO_ERROR
        },
        {
            "\\\\?\\C:\\AnInvalidFolder", "\\\\?\\C:", 7,
            NO_ERROR, ERROR_FILENAME_EXCED_RANGE
        },
        {
            "\\\\?\\c:\\AnInvalidFolder", "\\\\?\\c:", 7,
            NO_ERROR, ERROR_FILENAME_EXCED_RANGE
        },
        {
            "C:/", "C:\\", 4,
            NO_ERROR, ERROR_MORE_DATA
        },
        {
            "M:/", "", 4,
            ERROR_FILE_NOT_FOUND, ERROR_MORE_DATA
        },
        {
            "C:ABC:DEF:\\AnInvalidFolder", "C:\\", 4,
            NO_ERROR, ERROR_MORE_DATA
        },
        {
            "?:ABC:DEF:\\AnInvalidFolder", "?:\\" , sizeof(volume_path),
            ERROR_FILE_NOT_FOUND, NO_ERROR
        },
        {
            "relative/path", "%CurrentDrive%\\", sizeof(volume_path),
            NO_ERROR, NO_ERROR
        },
        {
            "/unix-style/absolute/path", "%CurrentDrive%\\", sizeof(volume_path),
            NO_ERROR, NO_ERROR
        },
        {
            "\\??\\C:\\NonExistent", "%CurrentDrive%\\", sizeof(volume_path),
            NO_ERROR, NO_ERROR
        },
        {
            "\\??\\M:\\NonExistent", "%CurrentDrive%\\", sizeof(volume_path),
            NO_ERROR, NO_ERROR
        },
        {
            "somefile:def", "%CurrentDrive%\\", sizeof(volume_path),
            NO_ERROR, NO_ERROR
        },
        {
            "s:omefile", "S:\\" , sizeof(volume_path),
            ERROR_FILE_NOT_FOUND, NO_ERROR
        },
    };
    BOOL ret, success;
    DWORD error;
    UINT i;


    if (!pGetVolumePathNameA)
    {
        win_skip("required functions not found\n");
        return;
    }


    ret = GetCurrentDirectoryA( sizeof(cwd), cwd );
    ok( ret, "Failed to obtain the current working directory.\n" );
    cwd[2] = 0;
    ret = SetEnvironmentVariableA( "CurrentDrive", cwd );
    ok( ret, "Failed to set an environment variable for the current working drive.\n" );

    for (i=0; i<sizeof(test_paths)/sizeof(test_paths[0]); i++)
    {
        BOOL broken_ret = test_paths[i].broken_error == NO_ERROR;
        char *output = (test_paths[i].path_name != ((void*)0) ? volume_path : ((void*)0));
        BOOL expected_ret = test_paths[i].error == NO_ERROR;

        volume_path[0] = 0;
        if (test_paths[i].path_len < sizeof(volume_path))
            volume_path[ test_paths[i].path_len ] = 0x11;

        SetLastError( 0xdeadbeef );
        ret = pGetVolumePathNameA( test_paths[i].file_name, output, test_paths[i].path_len );
        error = GetLastError();
        ok(ret == expected_ret || broken(ret == broken_ret),
                                "GetVolumePathName test %d %s unexpectedly.\n",
                                i, test_paths[i].error == NO_ERROR ? "failed" : "succeeded");

        if (ret)
        {
            char path_name[MAX_PATH];

            ExpandEnvironmentStringsA( test_paths[i].path_name, path_name, MAX_PATH);

            success = (strcmp( volume_path, path_name ) == 0)
                      || broken(strcasecmp( volume_path, path_name ) == 0) ;
            ok(success, "GetVolumePathName test %d unexpectedly returned path %s (expected %s).\n",
                        i, volume_path, path_name);
        }
        else
        {

            success = (error == test_paths[i].error || broken(error == test_paths[i].broken_error));
            ok(success, "GetVolumePathName test %d unexpectedly returned error 0x%x (expected 0x%x).\n",
                        i, error, test_paths[i].error);
        }

        if (test_paths[i].path_len < sizeof(volume_path))
            ok(volume_path[ test_paths[i].path_len ] == 0x11,
               "GetVolumePathName test %d corrupted byte after end of buffer.\n", i);
    }
}
