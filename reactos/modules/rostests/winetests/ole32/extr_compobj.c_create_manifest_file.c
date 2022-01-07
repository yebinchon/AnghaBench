
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int ARRAY_SIZE (int ) ;
 int CP_ACP ;
 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int *,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int GetFullPathNameW (int *,int ,int ,int *) ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int TRUE ;
 int WriteFile (scalar_t__,char const*,int,int *,int *) ;
 int manifest_path ;
 int ok (int,char*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static BOOL create_manifest_file(const char *filename, const char *manifest)
{
    int manifest_len;
    DWORD size;
    HANDLE file;
    WCHAR path[MAX_PATH];

    MultiByteToWideChar( CP_ACP, 0, filename, -1, path, MAX_PATH );
    GetFullPathNameW(path, ARRAY_SIZE(manifest_path), manifest_path, ((void*)0));

    manifest_len = strlen(manifest);
    file = CreateFileW(path, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS,
                       FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "CreateFile failed: %u\n", GetLastError());
    if(file == INVALID_HANDLE_VALUE)
        return FALSE;
    WriteFile(file, manifest, manifest_len, &size, ((void*)0));
    CloseHandle(file);

    return TRUE;
}
