
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int manifest_path ;
typedef int WCHAR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CP_ACP ;
 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int *,int ,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 int GetTempPathW (int,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int WriteFile (scalar_t__,char const*,int ,int *,int *) ;
 int lstrcatW (int *,int *) ;
 int ok (int,char*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void create_manifest_file(const char *filename, const char *manifest)
{
    WCHAR path[MAX_PATH], manifest_path[MAX_PATH];
    HANDLE file;
    DWORD size;

    MultiByteToWideChar( CP_ACP, 0, filename, -1, path, MAX_PATH );

    GetTempPathW(sizeof(manifest_path)/sizeof(WCHAR), manifest_path);
    lstrcatW(manifest_path, path);

    file = CreateFileW(manifest_path, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "CreateFile failed: %u\n", GetLastError());
    WriteFile(file, manifest, strlen(manifest), &size, ((void*)0));
    CloseHandle(file);
}
