
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef char CHAR ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char const*,int ,int ,int *,int ,int ,int *) ;
 int FILE_CURRENT ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int SetEndOfFile (scalar_t__) ;
 int SetFilePointer (scalar_t__,scalar_t__,int *,int ) ;
 int WriteFile (scalar_t__,char const*,int ,scalar_t__*,int *) ;
 scalar_t__ lstrlenA (char const*) ;
 int ok (int,char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void create_file(const CHAR *name, DWORD size)
{
    HANDLE file;
    DWORD written, left;

    file = CreateFileA(name, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, 0, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "Failure to open file %s\n", name);
    WriteFile(file, name, strlen(name), &written, ((void*)0));
    WriteFile(file, "\n", strlen("\n"), &written, ((void*)0));

    left = size - lstrlenA(name) - 1;

    SetFilePointer(file, left, ((void*)0), FILE_CURRENT);
    SetEndOfFile(file);

    CloseHandle(file);
}
