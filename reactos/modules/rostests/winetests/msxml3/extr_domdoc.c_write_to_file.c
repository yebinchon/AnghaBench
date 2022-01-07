
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char const*,int,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int WriteFile (scalar_t__,char const*,int ,int *,int *) ;
 int ok (int,char*,char const*,...) ;
 int strlen (char const*) ;

__attribute__((used)) static void write_to_file(const char *name, const char *data)
{
    DWORD written;
    HANDLE hfile;
    BOOL ret;

    hfile = CreateFileA(name, GENERIC_WRITE|GENERIC_READ, 0, ((void*)0), CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0) );
    ok(hfile != INVALID_HANDLE_VALUE, "failed to create test file: %s\n", name);

    ret = WriteFile(hfile, data, strlen(data), &written, ((void*)0));
    ok(ret, "WriteFile failed: %s, %d\n", name, GetLastError());

    CloseHandle(hfile);
}
