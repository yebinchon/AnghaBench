
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef char WCHAR ;
typedef scalar_t__ UINT ;
typedef int DWORD ;


 scalar_t__ DPROMPT_BUFFERTOOSMALL ;
 scalar_t__ DPROMPT_SUCCESS ;
 int GetSystemDirectoryW (char*,int) ;
 int IDF_CHECKFIRST ;
 int MAX_PATH ;
 scalar_t__ SetupPromptForDiskW (int ,char*,char*,char*,char*,int ,int ,char*,int,int*) ;
 scalar_t__ lstrcmpW (char*,char*) ;
 int lstrlenW (char*) ;
 int memset (char*,int ,int) ;
 int ok (int,char*,int,...) ;
 int wine_dbgstr_w (char*) ;

__attribute__((used)) static void test_SetupPromptForDiskW(void)
{
    WCHAR file[] = {'k','e','r','n','e','l','3','2','.','d','l','l','\0'};
    WCHAR title[] = {'T','e','s','t','\0'};
    WCHAR disk[] = {'T','e','s','t','d','i','s','k','\0'};
    WCHAR path[MAX_PATH];
    WCHAR buffer[MAX_PATH];
    UINT ret;
    DWORD length;

    GetSystemDirectoryW(path, MAX_PATH);

    memset(buffer, 0, sizeof(buffer));
    ret = SetupPromptForDiskW(0, title, disk, path, file, 0, IDF_CHECKFIRST, buffer, MAX_PATH-1, &length);
    ok(ret == DPROMPT_SUCCESS, "Expected DPROMPT_SUCCESS, got %u\n", ret);
    ok(length == lstrlenW(path)+1, "Expect length %u, got %u\n", lstrlenW(path)+1, length);
    ok(lstrcmpW(path, buffer) == 0, "Expected path %s, got %s\n", wine_dbgstr_w(path), wine_dbgstr_w(buffer));

    memset(buffer, 0, sizeof(buffer));
    ret = SetupPromptForDiskW(0, title, disk, path, file, 0, IDF_CHECKFIRST, 0, 0, &length);
    ok(ret == DPROMPT_SUCCESS, "Expected DPROMPT_SUCCESS, got %d\n", ret);
    ok(length == lstrlenW(path)+1, "Expect length %u, got %u\n", lstrlenW(path)+1, length);

    memset(buffer, 0, sizeof(buffer));
    ret = SetupPromptForDiskW(0, title, disk, path, file, 0, IDF_CHECKFIRST, buffer, 1, &length);
    ok(ret == DPROMPT_BUFFERTOOSMALL, "Expected DPROMPT_BUFFERTOOSMALL, got %u\n", ret);

    memset(buffer, 0, sizeof(buffer));
    ret = SetupPromptForDiskW(0, title, disk, path, file, 0, IDF_CHECKFIRST, buffer, lstrlenW(path), &length);
    ok(ret == DPROMPT_BUFFERTOOSMALL, "Expected DPROMPT_BUFFERTOOSMALL, got %u\n", ret);

    memset(buffer, 0, sizeof(buffer));
    ret = SetupPromptForDiskW(0, title, disk, path, file, 0, IDF_CHECKFIRST, buffer, lstrlenW(path)+1, &length);
    ok(ret == DPROMPT_SUCCESS, "Expected DPROMPT_SUCCESS, got %u\n", ret);
    ok(length == lstrlenW(path)+1, "Expect length %u, got %u\n", lstrlenW(path)+1, length);
    ok(lstrcmpW(path, buffer) == 0, "Expected path %s, got %s\n", wine_dbgstr_w(path), wine_dbgstr_w(buffer));
}
