
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char const*,int ,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int WriteFile (scalar_t__,char const*,int ,int *,int *) ;
 int ok (int,char*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void create_manifest_file(const char *filename, const char *manifest)
{
    HANDLE file;
    DWORD size;

    file = CreateFileA(filename, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS,
                       FILE_ATTRIBUTE_NORMAL, ((void*)0));
    ok(file != INVALID_HANDLE_VALUE, "CreateFile failed: %u\n", GetLastError());
    WriteFile(file, manifest, strlen(manifest), &size, ((void*)0));
    CloseHandle(file);
}
