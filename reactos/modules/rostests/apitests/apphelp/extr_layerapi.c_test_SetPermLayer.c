
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file ;
typedef scalar_t__ HANDLE ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int DeleteFileA (char*) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int GetLongPathNameA (char*,char*,int) ;
 int GetTempPathA (int ,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int PathAppendA (char*,char*) ;
 int TRUE ;
 int ok (int,char*,...) ;
 scalar_t__ setLayerValue (int ,char*,int *) ;
 int skip (char*) ;
 int test_SdbSetPermLayerKeysLevel (int ,char*) ;
 int test_SetPermLayerStateLevel (int ,char*) ;

__attribute__((used)) static void test_SetPermLayer(void)
{
    char file[MAX_PATH + 20], tmp[MAX_PATH + 20];
    HANDLE hfile;

    GetTempPathA(MAX_PATH, tmp);
    GetLongPathNameA(tmp, file, sizeof(file));
    PathAppendA(file, "test_file.exe");

    hfile = CreateFileA(file, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(hfile != INVALID_HANDLE_VALUE, "CreateFile failed for '%s'\n", file);
    if (hfile == INVALID_HANDLE_VALUE)
    {
        skip("Running these tests is useless without a file present\n");
        return;
    }
    CloseHandle(hfile);

    if (setLayerValue(FALSE, file, ((void*)0)))
    {
        test_SdbSetPermLayerKeysLevel(FALSE, file);
        test_SetPermLayerStateLevel(FALSE, file);
    }
    else
    {
        skip("Skipping SetPermLayerStateLevel tests for User, because I cannot prepare the environment\n");
    }
    if (setLayerValue(TRUE, file, ((void*)0)))
    {
        test_SdbSetPermLayerKeysLevel(TRUE, file);
        test_SetPermLayerStateLevel(TRUE, file);
    }
    else
    {
        skip("Skipping SetPermLayerStateLevel tests for Machine (HKLM), because I cannot prepare the environment\n");
    }
    ok(DeleteFileA(file), "DeleteFile failed....\n");
}
