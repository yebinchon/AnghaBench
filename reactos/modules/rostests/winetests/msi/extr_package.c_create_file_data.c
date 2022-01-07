
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int WriteFile (scalar_t__,char*,int ,int *,int *) ;
 int ok (int,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void create_file_data(LPCSTR name, LPCSTR data)
{
    HANDLE file;
    DWORD written;

    file = CreateFileA(name, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, 0, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "Failure to open file %s\n", name);
    if (file == INVALID_HANDLE_VALUE)
        return;

    WriteFile(file, data, strlen(data), &written, ((void*)0));
    WriteFile(file, "\n", strlen("\n"), &written, ((void*)0));

    CloseHandle(file);
}
