
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_7__ {int hThread; int hProcess; } ;
struct TYPE_6__ {int cb; } ;
typedef TYPE_1__ STARTUPINFOW ;
typedef TYPE_2__ PROCESS_INFORMATION ;


 int CloseHandle (int ) ;
 int CreateProcessW (int *,char*,int *,int *,int ,long,int *,int *,TYPE_1__*,TYPE_2__*) ;
 int FALSE ;
 int MAX_PATH ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int ,char*) ;
 int progname ;
 int winetest_wait_child_process (int ) ;
 int wsprintfW (char*,char const*,int ,char*) ;

__attribute__((used)) static void run_child(WCHAR *secret)
{
    static const WCHAR format[] = {'%','s',' ','q','m','g','r',' ','%','s', 0};
    WCHAR cmdline[MAX_PATH];
    PROCESS_INFORMATION info;
    STARTUPINFOW startup;

    memset(&startup, 0, sizeof startup);
    startup.cb = sizeof startup;

    wsprintfW(cmdline, format, progname, secret);
    ok(CreateProcessW(((void*)0), cmdline, ((void*)0), ((void*)0), FALSE, 0L, ((void*)0), ((void*)0), &startup, &info), "CreateProcess\n");
    winetest_wait_child_process(info.hProcess);
    ok(CloseHandle(info.hProcess), "CloseHandle\n");
    ok(CloseHandle(info.hThread), "CloseHandle\n");
}
