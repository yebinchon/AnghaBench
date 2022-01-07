
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (int ,int ,int ,int *,int ,int ,int *) ;
 int FILE_BEGIN ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int SetEndOfFile (scalar_t__) ;
 int SetFilePointer (scalar_t__,scalar_t__,int *,int ) ;
 int WriteFile (scalar_t__,int ,int ,scalar_t__*,int *) ;
 int ok (int,char*,int ) ;
 int strlen (int ) ;

__attribute__((used)) static void create_file(LPCSTR name, LPCSTR data, DWORD size)
{
    HANDLE file;
    DWORD written;

    file = CreateFileA(name, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, 0, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "Failure to open file %s\n", name);
    WriteFile(file, data, strlen(data), &written, ((void*)0));

    if (size)
    {
        SetFilePointer(file, size, ((void*)0), FILE_BEGIN);
        SetEndOfFile(file);
    }

    CloseHandle(file);
}
