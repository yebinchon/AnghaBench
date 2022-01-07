
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curdir ;
typedef int buf ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CP_ACP ;
 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int GetCurrentDirectoryA (int,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char*,int,int ,int) ;
 int WriteFile (scalar_t__,char*,int,int *,int *) ;
 int cache_file_name ;
 int lstrcatA (char*,char*) ;
 int memset (char*,char,int) ;
 int ok (int,char*) ;
 char* test_txtA ;

__attribute__((used)) static void create_cache_file(void)
{
    char buf[6500], curdir[MAX_PATH];
    HANDLE file;
    DWORD size;

    file = CreateFileA(test_txtA, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS,
            FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "CreateFile failed\n");
    if(file == INVALID_HANDLE_VALUE)
        return;

    memset(buf, 'X', sizeof(buf));
    WriteFile(file, buf, sizeof(buf), &size, ((void*)0));
    CloseHandle(file);

    memset(curdir, 0, sizeof(curdir));
    GetCurrentDirectoryA(MAX_PATH, curdir);
    lstrcatA(curdir, "\\");
    lstrcatA(curdir, test_txtA);

    MultiByteToWideChar(CP_ACP, 0, curdir, -1, cache_file_name, MAX_PATH);
}
