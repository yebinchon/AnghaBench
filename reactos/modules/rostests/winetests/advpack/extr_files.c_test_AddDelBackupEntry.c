
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int windir ;
typedef scalar_t__ HRESULT ;
typedef char CHAR ;
typedef int BOOL ;


 int AADBE_ADD_ENTRY ;
 int AADBE_DEL_ENTRY ;
 char* CURR_DIR ;
 int CreateDirectoryA (char*,int *) ;
 int DeleteFileA (char*) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 scalar_t__ GetFileAttributesA (char*) ;
 int GetWindowsDirectoryA (char*,int) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int MAX_PATH ;
 int RemoveDirectoryA (char*) ;
 scalar_t__ S_OK ;
 int SetFileAttributesA (char*,int ) ;
 int TRUE ;
 scalar_t__ broken (int) ;
 int check_ini_file_attr (char*) ;
 int lstrcatA (char*,char*) ;
 int lstrcpyA (char*,char*) ;
 int ok (int,char*,...) ;
 scalar_t__ pAddDelBackupEntry (char*,char*,char*,int ) ;
 int sprintf (char*,char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_AddDelBackupEntry(void)
{
    BOOL ret;
    HRESULT res;
    CHAR path[MAX_PATH];
    CHAR windir[MAX_PATH];

    lstrcpyA(path, CURR_DIR);
    lstrcatA(path, "\\backup\\basename.INI");




    res = pAddDelBackupEntry(((void*)0), "backup", "basename", AADBE_ADD_ENTRY);
    ok(res == S_OK, "Expected S_OK, got %d\n", res);
    ok(!DeleteFileA(path), "Expected path to not exist\n");

    lstrcpyA(path, CURR_DIR);
    lstrcatA(path, "\\backup\\.INI");


    res = pAddDelBackupEntry("one\0two\0three\0", "backup", "", AADBE_ADD_ENTRY);
    ok(res == S_OK, "Expected S_OK, got %d\n", res);
    ok(!DeleteFileA(path), "Expected path to not exist\n");

    lstrcpyA(path, CURR_DIR);
    lstrcatA(path, "\\basename.INI");


    res = pAddDelBackupEntry("one\0two\0three\0", ((void*)0), "basename", 0);
    ok(res == S_OK, "Expected S_OK, got %d\n", res);
    ok(!DeleteFileA(path), "Expected path to not exist\n");

    lstrcpyA(path, "c:\\basename.INI");


    res = pAddDelBackupEntry("one\0two\0three\0", "c:\\", "basename", AADBE_ADD_ENTRY);
    ok(res == S_OK, "Expected S_OK, got %d\n", res);
    if (GetFileAttributesA(path) != INVALID_FILE_ATTRIBUTES)
    {
        ok(check_ini_file_attr(path), "Expected ini file to be hidden\n");
        ok(DeleteFileA(path), "Expected path to exist\n");
    }
    else
        win_skip("Test file could not be created\n");

    lstrcpyA(path, CURR_DIR);
    lstrcatA(path, "\\backup\\basename.INI");


    RemoveDirectoryA("backup");
    res = pAddDelBackupEntry("one\0two\0three\0", "backup", "basename", AADBE_ADD_ENTRY);
    ok(res == S_OK, "Expected S_OK, got %d\n", res);
    ok(!check_ini_file_attr(path), "Expected ini file to not be hidden\n");
    ok(!DeleteFileA(path), "Expected path to not exist\n");


    CreateDirectoryA("backup", ((void*)0));
    res = pAddDelBackupEntry("one\0two\0three\0", "backup", "basename", AADBE_ADD_ENTRY);
    ok(res == S_OK, "Expected S_OK, got %d\n", res);
    ok(check_ini_file_attr(path), "Expected ini file to be hidden\n");
    ok(DeleteFileA(path), "Expected path to exist\n");
    RemoveDirectoryA("backup");

    GetWindowsDirectoryA(windir, sizeof(windir));
    sprintf(path, "%s\\basename.INI", windir);


    res = pAddDelBackupEntry("one\0two\0three\0", ((void*)0), "basename", AADBE_ADD_ENTRY);
    ok(res == S_OK, "Expected S_OK, got %d\n", res);


    SetFileAttributesA(path, FILE_ATTRIBUTE_NORMAL);
    res = pAddDelBackupEntry("one\0three\0", ((void*)0), "basename", AADBE_DEL_ENTRY);
    SetFileAttributesA(path, FILE_ATTRIBUTE_NORMAL);
    ok(res == S_OK, "Expected S_OK, got %d\n", res);
    ret = DeleteFileA(path);
    ok(ret == TRUE ||
       broken(ret == FALSE),
       "Expected path to exist\n");
}
