
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int const*,int ,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int WriteFile (scalar_t__,char const*,int ,int *,int *) ;
 int winetest_ok (int,char*) ;

void test_create_file_imp(const WCHAR* name, const char* contents, size_t len)
{
    HANDLE file = CreateFileW(name, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    winetest_ok(file != INVALID_HANDLE_VALUE, "can't create file\n");
    if (file != INVALID_HANDLE_VALUE)
    {
        if (contents && len)
        {
            DWORD size;
            WriteFile(file, contents, (DWORD)len, &size, ((void*)0));
        }
        CloseHandle(file);
    }
}
