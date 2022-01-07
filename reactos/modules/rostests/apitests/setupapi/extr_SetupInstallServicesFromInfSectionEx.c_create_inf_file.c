
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (int ,int ,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ WriteFile (scalar_t__,char const*,int ,int *,int *) ;
 int assert (int) ;
 int strlen (char const*) ;

__attribute__((used)) static void create_inf_file(LPCSTR filename, const char *data)
{
    DWORD res;
    BOOL ret;
    HANDLE handle = CreateFileA(filename, GENERIC_WRITE, 0, ((void*)0),
                                CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    assert(handle != INVALID_HANDLE_VALUE);
    ret = WriteFile(handle, data, strlen(data), &res, ((void*)0));
    assert(ret != 0);
    CloseHandle(handle);
}
