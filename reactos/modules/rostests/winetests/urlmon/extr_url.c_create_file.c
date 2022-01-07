
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int CHAR ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char const*,int ,int ,int *,int ,int ,int *) ;
 int DeleteFileA (char const*) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int GetCurrentDirectoryA (int,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int WriteFile (scalar_t__,char const*,int ,int *,int *) ;
 int lstrcatA (int *,char const*) ;
 int ok (int,char*) ;
 int set_file_url (int *) ;
 int strlen (char const*) ;
 char const* test_file ;

__attribute__((used)) static void create_file(const char *file_name, const char *content)
{
    HANDLE file;
    DWORD size;
    CHAR path[MAX_PATH];

    file = CreateFileA(file_name, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS,
            FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "CreateFile failed\n");
    if(file == INVALID_HANDLE_VALUE)
        return;

    if(test_file)
        DeleteFileA(test_file);
    test_file = file_name;
    WriteFile(file, content, strlen(content), &size, ((void*)0));
    CloseHandle(file);

    GetCurrentDirectoryA(MAX_PATH, path);
    lstrcatA(path, "\\");
    lstrcatA(path, file_name);
    set_file_url(path);
}
