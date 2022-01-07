
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
 int DeleteFileA (char*) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int WriteFile (scalar_t__,char const*,size_t,int *,int *) ;
 int ok (int,char*,...) ;
 int run_script_file (char*,int ) ;
 int sprintf (char*,char*,char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static void run_script(const char *name, const char *script_data, size_t script_size, DWORD expected_exit_code)
{
    char file_name[MAX_PATH];
    const char *ext;
    HANDLE file;
    DWORD size;
    BOOL res;

    ext = strrchr(name, '.');
    ok(ext != ((void*)0), "no script extension\n");
    if(!ext)
      return;

    sprintf(file_name, "test%s", ext);

    file = CreateFileA(file_name, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS,
            FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "CreateFile failed: %u\n", GetLastError());
    if(file == INVALID_HANDLE_VALUE)
        return;

    res = WriteFile(file, script_data, script_size, &size, ((void*)0));
    CloseHandle(file);
    ok(res, "Could not write to file: %u\n", GetLastError());
    if(!res)
        return;

    run_script_file(file_name, expected_exit_code);

    DeleteFileA(file_name);
}
