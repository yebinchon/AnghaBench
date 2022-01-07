
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int windir ;
typedef int save_TMP ;
typedef int buf ;
typedef int WCHAR ;


 int GetCurrentDirectoryW (int,int *) ;
 int GetEnvironmentVariableA (char*,char*,int) ;
 int GetWindowsDirectoryA (char*,int) ;
 int MAX_PATH ;
 int SetCurrentDirectoryA (char*) ;
 int SetCurrentDirectoryW (int *) ;
 int SetEnvironmentVariableA (char*,char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int test_GetTempPathA (char*) ;
 int test_GetTempPathW (char*) ;
 int trace (char*,char*) ;

__attribute__((used)) static void test_GetTempPath(void)
{
    char save_TMP[MAX_PATH];
    char windir[MAX_PATH];
    char buf[MAX_PATH];
    WCHAR curdir[MAX_PATH];

    if (!GetEnvironmentVariableA("TMP", save_TMP, sizeof(save_TMP))) save_TMP[0] = 0;


    trace("TMP=%s\n", save_TMP);
    if (save_TMP[0])
    {
        strcpy(buf,save_TMP);
        if (buf[strlen(buf)-1]!='\\')
            strcat(buf,"\\");
        test_GetTempPathA(buf);
        test_GetTempPathW(buf);
    }


    GetWindowsDirectoryA(windir, sizeof(windir));
    SetEnvironmentVariableA("TMP", windir);
    GetEnvironmentVariableA("TMP", buf, sizeof(buf));
    trace("TMP=%s\n", buf);
    strcat(windir,"\\");
    test_GetTempPathA(windir);
    test_GetTempPathW(windir);


    GetWindowsDirectoryA(windir, sizeof(windir));
    windir[3] = 0;
    SetEnvironmentVariableA("TMP", windir);
    GetEnvironmentVariableA("TMP", buf, sizeof(buf));
    trace("TMP=%s\n", buf);
    test_GetTempPathA(windir);
    test_GetTempPathW(windir);

    GetCurrentDirectoryW(MAX_PATH, curdir);

    GetWindowsDirectoryA(windir, sizeof(windir));
    SetCurrentDirectoryA(windir);
    windir[2] = 0;
    SetEnvironmentVariableA("TMP", windir);
    GetEnvironmentVariableA("TMP", buf, sizeof(buf));
    trace("TMP=%s\n", buf);
    GetWindowsDirectoryA(windir, sizeof(windir));
    strcat(windir,"\\");
    test_GetTempPathA(windir);
    test_GetTempPathW(windir);

    SetEnvironmentVariableA("TMP", save_TMP);
    SetCurrentDirectoryW(curdir);
}
