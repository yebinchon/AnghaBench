
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int si ;
struct TYPE_6__ {scalar_t__ hProcess; scalar_t__ hThread; } ;
struct TYPE_5__ {int cb; int member_0; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef scalar_t__ HANDLE ;
typedef int FILETIME ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int ,int,int *,int ,int ,int *) ;
 int CreateProcessA (char*,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_2__*) ;
 int DeleteFileA (char*) ;
 int FALSE ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FILE_WRITE_ATTRIBUTES ;
 int GetLastError () ;
 int GetModuleFileNameA (int *,char*,int) ;
 int GetSystemTimeAsFileTime (int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int SetFileTime (scalar_t__,int *,int *,int *) ;
 int create_manifest_file (char*,int ,int,int *,int *) ;
 int manifest1 ;
 int ok (int ,char*,int ) ;
 int skip (char*) ;
 int sprintf (char*,char*,char*,char*) ;
 int strcat (char*,char*) ;
 int winetest_get_mainargs (char***) ;
 int winetest_wait_child_process (scalar_t__) ;

__attribute__((used)) static void run_child_process(void)
{
    char cmdline[MAX_PATH];
    char path[MAX_PATH];
    char **argv;
    PROCESS_INFORMATION pi;
    STARTUPINFOA si = { 0 };
    HANDLE file;
    FILETIME now;
    BOOL ret;

    GetModuleFileNameA(((void*)0), path, MAX_PATH);
    strcat(path, ".manifest");
    if(!create_manifest_file(path, manifest1, -1, ((void*)0), ((void*)0))) {
        skip("Could not create manifest file\n");
        return;
    }

    si.cb = sizeof(si);
    winetest_get_mainargs( &argv );


    file = CreateFileA(argv[0], FILE_WRITE_ATTRIBUTES, FILE_SHARE_READ | FILE_SHARE_WRITE,
                       ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    if (file != INVALID_HANDLE_VALUE) {
        GetSystemTimeAsFileTime(&now);
        SetFileTime(file, ((void*)0), ((void*)0), &now);
        CloseHandle(file);
    }
    sprintf(cmdline, "\"%s\" %s manifest1", argv[0], argv[1]);
    ret = CreateProcessA(argv[0], cmdline, ((void*)0), ((void*)0), FALSE, 0, ((void*)0), ((void*)0), &si, &pi);
    ok(ret, "Could not create process: %u\n", GetLastError());
    winetest_wait_child_process( pi.hProcess );
    CloseHandle(pi.hThread);
    CloseHandle(pi.hProcess);
    DeleteFileA(path);
}
