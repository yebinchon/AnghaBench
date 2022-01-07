
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int UINT ;
typedef int DWORD ;


 int DPROMPT_BUFFERTOOSMALL ;
 int DPROMPT_SUCCESS ;
 int GetSystemDirectoryA (char*,int) ;
 int IDF_CHECKFIRST ;
 int MAX_PATH ;
 int SetupPromptForDiskA (int ,char*,char*,char*,char*,int ,int ,char*,int,int*) ;
 int memset (char*,int ,int) ;
 int ok (int,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void test_SetupPromptForDiskA(void)
{
    char file[] = "kernel32.dll";
    char path[MAX_PATH];
    char buffer[MAX_PATH];
    UINT ret;
    DWORD length;

    GetSystemDirectoryA(path, MAX_PATH);

    memset(buffer, 0, sizeof(buffer));
    ret = SetupPromptForDiskA(0, "Test", "Testdisk", path, file, 0, IDF_CHECKFIRST, buffer, sizeof(buffer) - 1, &length);
    ok(ret == DPROMPT_SUCCESS, "Expected DPROMPT_SUCCESS, got %u\n", ret);
    ok(length == strlen(path)+1, "Expect length %u, got %u\n", (DWORD)strlen(path) + 1, length);
    ok(strcmp(path, buffer) == 0, "Expected path %s, got %s\n", path, buffer);

    memset(buffer, 0, sizeof(buffer));
    ret = SetupPromptForDiskA(0, "Test", "Testdisk", path, file, 0, IDF_CHECKFIRST, 0, 0, &length);
    ok(ret == DPROMPT_SUCCESS, "Expected DPROMPT_SUCCESS, got %d\n", ret);
    ok(length == strlen(path)+1, "Expect length %u, got %u\n", (DWORD)strlen(path) + 1, length);

    memset(buffer, 0, sizeof(buffer));
    ret = SetupPromptForDiskA(0, "Test", "Testdisk", path, file, 0, IDF_CHECKFIRST, buffer, 1, &length);
    ok(ret == DPROMPT_BUFFERTOOSMALL, "Expected DPROMPT_BUFFERTOOSMALL, got %u\n", ret);

    memset(buffer, 0, sizeof(buffer));
    ret = SetupPromptForDiskA(0, "Test", "Testdisk", path, file, 0, IDF_CHECKFIRST, buffer, strlen(path), &length);
    ok(ret == DPROMPT_BUFFERTOOSMALL, "Expected DPROMPT_BUFFERTOOSMALL, got %u\n", ret);

    memset(buffer, 0, sizeof(buffer));
    ret = SetupPromptForDiskA(0, "Test", "Testdisk", path, file, 0, IDF_CHECKFIRST, buffer, strlen(path)+1, &length);
    ok(ret == DPROMPT_SUCCESS, "Expected DPROMPT_SUCCESS, got %u\n", ret);
    ok(length == strlen(path)+1, "Expect length %u, got %u\n", (DWORD)strlen(path) + 1, length);
    ok(strcmp(path, buffer) == 0, "Expected path %s, got %s\n", path, buffer);
}
