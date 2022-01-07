
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int WriteFile (scalar_t__,void const*,int ,int *,int *) ;
 int ok (int,char*,int ) ;

__attribute__((used)) static BOOL write_file(const void *str, DWORD size)
{
    HANDLE file;
    BOOL ret;
    DWORD written;

    file = CreateFileA("test.reg", GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS,
                       FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "CreateFile failed: %u\n", GetLastError());
    if (file == INVALID_HANDLE_VALUE)
        return FALSE;

    ret = WriteFile(file, str, size, &written, ((void*)0));
    ok(ret, "WriteFile failed: %u\n", GetLastError());
    CloseHandle(file);

    return ret;
}
