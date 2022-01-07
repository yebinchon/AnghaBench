
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSIDL_COMMON_PROGRAMS ;
 char* CURR_DIR ;
 int CreateDirectoryA (char*,int *) ;
 int DeleteFileA (char*) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ GetFileAttributesA (char*) ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;
 int MAX_PATH ;
 int RemoveDirectoryA (char*) ;
 int SHGFP_TYPE_CURRENT ;
 scalar_t__ SHGetFolderPathA (int *,int ,int *,int ,char*) ;
 scalar_t__ S_OK ;
 int create_inf_file (char*,char const*) ;
 char* inffile ;
 int ok (int,char*) ;
 int run_cmdline (char*,int,char*) ;
 int skip (char*) ;
 int snprintf (char*,int,char*,char*) ;
 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static void test_profile_items(void)
{
    char path[MAX_PATH], commonprogs[MAX_PATH];

    static const char *inf =
        "[Version]\n"
        "Signature=\"$Chicago$\"\n"
        "[DefaultInstall]\n"
        "ProfileItems=TestItem,TestItem2,TestGroup\n"
        "[TestItem]\n"
        "Name=TestItem\n"
        "CmdLine=11,,notepad.exe\n"
        "[TestItem2]\n"
        "Name=TestItem2\n"
        "CmdLine=11,,notepad.exe\n"
        "SubDir=TestDir\n"
        "[TestGroup]\n"
        "Name=TestGroup,4\n"
        ;

    if (S_OK != SHGetFolderPathA(((void*)0), CSIDL_COMMON_PROGRAMS, ((void*)0), SHGFP_TYPE_CURRENT, commonprogs))
    {
        skip("No common program files directory exists\n");
        goto cleanup;
    }

    snprintf(path, MAX_PATH, "%s\\TestDir", commonprogs);
    if (!CreateDirectoryA(path, ((void*)0)) && GetLastError() == ERROR_ACCESS_DENIED)
    {
        skip("need admin rights\n");
        return;
    }
    RemoveDirectoryA(path);

    create_inf_file(inffile, inf);
    sprintf(path, "%s\\%s", CURR_DIR, inffile);
    run_cmdline("DefaultInstall", 128, path);

    snprintf(path, MAX_PATH, "%s\\TestItem.lnk", commonprogs);
    snprintf(path, MAX_PATH, "%s\\TestDir", commonprogs);
    ok(INVALID_FILE_ATTRIBUTES != GetFileAttributesA(path), "directory not created\n");
    snprintf(path, MAX_PATH, "%s\\TestDir\\TestItem2.lnk", commonprogs);
    ok(INVALID_FILE_ATTRIBUTES != GetFileAttributesA(path), "link not created\n");
    snprintf(path, MAX_PATH, "%s\\TestGroup", commonprogs);
    ok(INVALID_FILE_ATTRIBUTES != GetFileAttributesA(path), "group not created\n");

    snprintf(path, MAX_PATH, "%s\\TestItem.lnk", commonprogs);
    DeleteFileA(path);
    snprintf(path, MAX_PATH, "%s\\TestDir\\TestItem2.lnk", commonprogs);
    DeleteFileA(path);
    snprintf(path, MAX_PATH, "%s\\TestItem2.lnk", commonprogs);
    DeleteFileA(path);
    snprintf(path, MAX_PATH, "%s\\TestDir", commonprogs);
    RemoveDirectoryA(path);
    snprintf(path, MAX_PATH, "%s\\TestGroup", commonprogs);
    RemoveDirectoryA(path);

cleanup:
    DeleteFileA(inffile);
}
