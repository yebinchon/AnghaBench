
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSIDL_APPDATA ;
 int CSIDL_PROFILE ;
 int CSIDL_PROGRAM_FILES ;
 int CSIDL_PROGRAM_FILES_COMMON ;
 int CSIDL_SYSTEM ;
 int CSIDL_WINDOWS ;
 int matchSpecialFolderPathToEnv (int ,char*) ;

__attribute__((used)) static void test_EnvVars(void)
{
    matchSpecialFolderPathToEnv(CSIDL_PROGRAM_FILES, "ProgramFiles");
    matchSpecialFolderPathToEnv(CSIDL_APPDATA, "APPDATA");
    matchSpecialFolderPathToEnv(CSIDL_PROFILE, "USERPROFILE");
    matchSpecialFolderPathToEnv(CSIDL_WINDOWS, "SystemRoot");
    matchSpecialFolderPathToEnv(CSIDL_WINDOWS, "windir");
    matchSpecialFolderPathToEnv(CSIDL_PROGRAM_FILES_COMMON, "CommonProgramFiles");

    matchSpecialFolderPathToEnv(CSIDL_SYSTEM, "winsysdir");
}
