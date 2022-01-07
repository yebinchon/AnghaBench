
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int *,int ,int ,int *,int ,int ,int *) ;
 int DeleteFileW (int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int WriteFile (scalar_t__,char const*,int ,int *,int *) ;
 int ok (int,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static void makeFile(WCHAR *name, const char *contents)
{
    HANDLE file;
    DWORD w, len = strlen(contents);

    DeleteFileW(name);
    file = CreateFileW(name, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS,
                       FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "CreateFile\n");
    ok(WriteFile(file, contents, len, &w, ((void*)0)), "WriteFile\n");
    CloseHandle(file);
}
