
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* pFrom; char* pTo; int fFlags; int * lpszProgressTitle; int * hNameMappings; int wFunc; int * hwnd; } ;
typedef TYPE_1__ SHFILEOPSTRUCTA ;
typedef int DWORD ;
typedef char CHAR ;


 int DE_DIFFDIR ;
 int DE_FILEDESTISFLD ;
 int DE_MANYSRC1DEST ;
 int DE_OPCANCELLED ;
 int ERROR_ACCESS_DENIED ;
 int ERROR_ALREADY_EXISTS ;
 int ERROR_CANCELLED ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_GEN_FAILURE ;
 int ERROR_INVALID_NAME ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int FOF_MULTIDESTFILES ;
 int FOF_NOCONFIRMATION ;
 int FOF_NOCONFIRMMKDIR ;
 int FOF_NOERRORUI ;
 int FOF_SILENT ;
 int FO_RENAME ;
 int MAX_PATH ;
 int SHFileOperationA (TYPE_1__*) ;
 scalar_t__ broken (int) ;
 int createTestFile (char*) ;
 int dir_exists (char*) ;
 int file_exists (char*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int ok (int,char*,...) ;
 scalar_t__ old_shell32 ;
 int set_curr_dir_path (char*,char*) ;

__attribute__((used)) static void test_rename(void)
{
    SHFILEOPSTRUCTA shfo, shfo2;
    CHAR from[5*MAX_PATH];
    CHAR to[5*MAX_PATH];
    DWORD retval;

    shfo.hwnd = ((void*)0);
    shfo.wFunc = FO_RENAME;
    shfo.pFrom = from;
    shfo.pTo = to;
    shfo.fFlags = FOF_NOCONFIRMATION | FOF_SILENT | FOF_NOERRORUI;
    shfo.hNameMappings = ((void*)0);
    shfo.lpszProgressTitle = ((void*)0);

    set_curr_dir_path(from, "test1.txt\0");
    set_curr_dir_path(to, "test4.txt\0");
    retval = SHFileOperationA(&shfo);
    ok(retval == ERROR_ALREADY_EXISTS ||
       retval == DE_FILEDESTISFLD ||
       broken(retval == ERROR_INVALID_NAME),
       "Expected ERROR_ALREADY_EXISTS or DE_FILEDESTISFLD, got %d\n", retval);
    ok(file_exists("test1.txt"), "The file is renamed\n");

    set_curr_dir_path(from, "test3.txt\0");
    set_curr_dir_path(to, "test4.txt\\test1.txt\0");
    retval = SHFileOperationA(&shfo);
    if (retval == DE_DIFFDIR)
    {

        ok(!file_exists("test4.txt\\test1.txt"), "The file is renamed\n");
    }
    else
    {
        ok(retval == ERROR_SUCCESS, "File is renamed moving to other directory\n");
        ok(file_exists("test4.txt\\test1.txt"), "The file is not renamed\n");
    }

    set_curr_dir_path(from, "test1.txt\0test2.txt\0test4.txt\0");
    set_curr_dir_path(to, "test6.txt\0test7.txt\0test8.txt\0");
    retval = SHFileOperationA(&shfo);
    ok(retval == ERROR_GEN_FAILURE ||
       retval == DE_MANYSRC1DEST ||
       broken(retval == ERROR_SUCCESS),
       "Expected ERROR_GEN_FAILURE or DE_MANYSRC1DEST , got %d\n", retval);
    ok(file_exists("test1.txt"), "The file is renamed - many files are specified\n");

    memcpy(&shfo2, &shfo, sizeof(SHFILEOPSTRUCTA));
    shfo2.fFlags |= FOF_MULTIDESTFILES;

    set_curr_dir_path(from, "test1.txt\0test2.txt\0test4.txt\0");
    set_curr_dir_path(to, "test6.txt\0test7.txt\0test8.txt\0");
    retval = SHFileOperationA(&shfo2);
    ok(retval == ERROR_GEN_FAILURE ||
       retval == DE_MANYSRC1DEST ||
       broken(retval == ERROR_SUCCESS),
       "Expected ERROR_GEN_FAILURE or DE_MANYSRC1DEST files, got %d\n", retval);
    ok(file_exists("test1.txt"), "The file is not renamed - many files are specified\n");

    set_curr_dir_path(from, "test1.txt\0");
    set_curr_dir_path(to, "test6.txt\0");
    retval = SHFileOperationA(&shfo);
    ok(retval == ERROR_SUCCESS, "Rename file failed, retval = %d\n", retval);
    ok(!file_exists("test1.txt"), "The file is not renamed\n");
    ok(file_exists("test6.txt"), "The file is not renamed\n");

    set_curr_dir_path(from, "test6.txt\0");
    set_curr_dir_path(to, "test1.txt\0");
    retval = SHFileOperationA(&shfo);
    ok(retval == ERROR_SUCCESS, "Rename file back failed, retval = %d\n", retval);

    set_curr_dir_path(from, "test4.txt\0");
    set_curr_dir_path(to, "test6.txt\0");
    retval = SHFileOperationA(&shfo);
    ok(retval == ERROR_SUCCESS, "Rename dir failed, retval = %d\n", retval);
    ok(!dir_exists("test4.txt"), "The dir is not renamed\n");
    ok(dir_exists("test6.txt"), "The dir is not renamed\n");

    set_curr_dir_path(from, "test6.txt\0");
    set_curr_dir_path(to, "test4.txt\0");
    retval = SHFileOperationA(&shfo);
    ok(retval == ERROR_SUCCESS, "Rename dir back failed, retval = %d\n", retval);
    ok(dir_exists("test4.txt"), "The dir is not renamed\n");


    shfo.pFrom = "test1.txt\0test2.txt\0";
    shfo.pTo = "a.txt\0";
    retval = SHFileOperationA(&shfo);
    ok(retval == ERROR_GEN_FAILURE ||
       retval == DE_MANYSRC1DEST ||
       broken(retval == ERROR_SUCCESS),
       "Expected ERROR_GEN_FAILURE or DE_MANYSRC1DEST, got %d\n", retval);
    ok(file_exists("test1.txt"), "Expected test1.txt to exist\n");
    ok(file_exists("test2.txt"), "Expected test2.txt to exist\n");
    ok(!file_exists("a.txt"), "Expected a.txt to not exist\n");


    shfo.pFrom = "idontexist\0";
    shfo.pTo = "newfile\0";
    retval = SHFileOperationA(&shfo);
    ok(retval == 1026 ||
       retval == ERROR_FILE_NOT_FOUND ||
       broken(retval == ERROR_SUCCESS),
       "Expected 1026 or ERROR_FILE_NOT_FOUND, got %d\n", retval);
    ok(!file_exists("newfile"), "Expected newfile to not exist\n");


    shfo.pFrom = "test1.txt\0";
    shfo.pTo = "test2.txt\0";
    if (old_shell32)
        shfo.fFlags |= FOF_NOCONFIRMMKDIR;
    retval = SHFileOperationA(&shfo);
    if (retval == ERROR_SUCCESS)
    {

        createTestFile("test1.txt");
    }
    else
    {
        ok(retval == ERROR_ALREADY_EXISTS ||
           broken(retval == DE_OPCANCELLED) ||
           broken(retval == ERROR_INVALID_NAME),
           "Expected ERROR_ALREADY_EXISTS, got %d\n", retval);
    }


    shfo.pFrom = "test1.txt\0";
    shfo.pTo = "\0";
    retval = SHFileOperationA(&shfo);
    ok(retval == ERROR_CANCELLED ||
       retval == DE_DIFFDIR ||
       retval == DE_FILEDESTISFLD ||
       broken(retval == DE_OPCANCELLED) ||
       broken(retval == 65652),
       "Expected ERROR_CANCELLED or DE_DIFFDIR, got %u\n", retval);
    ok(file_exists("test1.txt"), "Expected test1.txt to exist\n");


    shfo.pFrom = "\0";
    retval = SHFileOperationA(&shfo);
    ok(retval == ERROR_ACCESS_DENIED ||
       retval == DE_MANYSRC1DEST ||
       broken(retval == ERROR_SUCCESS),
       "Expected ERROR_ACCESS_DENIED or DE_MANYSRC1DEST, got %d\n", retval);


    if (0)
    {
        shfo.pFrom = ((void*)0);
        retval = SHFileOperationA(&shfo);
        ok(retval == ERROR_INVALID_PARAMETER, "Expected ERROR_INVALID_PARAMETER, got %d\n", retval);
    }
}
