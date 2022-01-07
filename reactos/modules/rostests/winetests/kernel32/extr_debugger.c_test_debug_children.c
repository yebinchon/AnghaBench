
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct child_blackbox {int failures; } ;
typedef int si ;
typedef int blackbox ;
struct TYPE_10__ {scalar_t__ dwDebugEventCode; scalar_t__ dwProcessId; int dwThreadId; } ;
struct TYPE_9__ {scalar_t__ dwProcessId; int * hProcess; int * hThread; } ;
struct TYPE_8__ {int cb; } ;
typedef TYPE_1__ STARTUPINFOA ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef int * HANDLE ;
typedef int DWORD ;
typedef TYPE_3__ DEBUG_EVENT ;
typedef int BOOL ;


 int CloseHandle (int *) ;
 int ContinueDebugEvent (scalar_t__,int ,int ) ;
 int * CreateEventA (int *,int,int,char*) ;
 int CreateProcessA (int *,char*,int *,int *,int,int,int *,int *,TYPE_1__*,TYPE_2__*) ;
 int DBG_CONTINUE ;
 int DebugActiveProcess (scalar_t__) ;
 int DeleteFileA (char*) ;
 scalar_t__ EXIT_PROCESS_DEBUG_EVENT ;
 int FALSE ;
 int GetLastError () ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,char*) ;
 int INFINITE ;
 int MAX_PATH ;
 int SetEvent (int *) ;
 int TRUE ;
 int WaitForDebugEvent (TYPE_3__*,int ) ;
 int WaitForSingleObject (int *,int ) ;
 int get_file_name (char*) ;
 int load_blackbox (char*,struct child_blackbox*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,int) ;
 int pCheckRemoteDebuggerPresent (int *,int*) ;
 int pDebugActiveProcessStop ;
 int sprintf (char*,char*,char*,char const*,char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char const*) ;
 char* strrchr (char*,char) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_debug_children(char *name, DWORD flag, BOOL debug_child)
{
    const char *arguments = "debugger children";
    struct child_blackbox blackbox;
    char blackbox_file[MAX_PATH], *p;
    char event_name[MAX_PATH];
    PROCESS_INFORMATION pi;
    STARTUPINFOA si;
    HANDLE event_init, event_attach;
    char *cmd;
    BOOL debug, ret;
    BOOL got_child_event = FALSE;

    if (!pDebugActiveProcessStop || !pCheckRemoteDebuggerPresent)
    {
        win_skip("DebugActiveProcessStop or CheckRemoteDebuggerPresent not available, skipping test.\n");
        return;
    }

    get_file_name(blackbox_file);
    cmd = HeapAlloc(GetProcessHeap(), 0, strlen(name) + strlen(arguments) + strlen(blackbox_file) + 5);
    sprintf(cmd, "%s %s \"%s\"", name, arguments, blackbox_file);

    p = strrchr(blackbox_file, '\\');
    p = p ? p+1 : blackbox_file;
    strcpy(event_name, p);
    strcat(event_name, "_init");
    event_init = CreateEventA(((void*)0), FALSE, FALSE, event_name);
    ok(event_init != ((void*)0), "OpenEvent failed, last error %d.\n", GetLastError());

    p = strrchr(blackbox_file, '\\');
    p = p ? p+1 : blackbox_file;
    strcpy(event_name, p);
    strcat(event_name, "_attach");
    event_attach = CreateEventA(((void*)0), FALSE, flag!=0, event_name);
    ok(event_attach != ((void*)0), "CreateEvent failed, last error %d.\n", GetLastError());

    memset(&si, 0, sizeof(si));
    si.cb = sizeof(si);

    ret = CreateProcessA(((void*)0), cmd, ((void*)0), ((void*)0), FALSE, flag, ((void*)0), ((void*)0), &si, &pi);
    ok(ret, "CreateProcess failed, last error %d.\n", GetLastError());
    HeapFree(GetProcessHeap(), 0, cmd);
    if (!flag)
    {
        WaitForSingleObject(event_init, INFINITE);
        ret = DebugActiveProcess(pi.dwProcessId);
        ok(ret, "DebugActiveProcess failed, last error %d.\n", GetLastError());
        ret = SetEvent(event_attach);
        ok(ret, "SetEvent failed, last error %d.\n", GetLastError());
    }

    ret = pCheckRemoteDebuggerPresent(pi.hProcess, &debug);
    ok(ret, "CheckRemoteDebuggerPresent failed, last error %d.\n", GetLastError());
    ok(debug, "Expected debug != 0, got %x.\n", debug);

    for (;;)
    {
        DEBUG_EVENT ev;

        ret = WaitForDebugEvent(&ev, INFINITE);
        ok(ret, "WaitForDebugEvent failed, last error %d.\n", GetLastError());
        if (!ret) break;

        if (ev.dwDebugEventCode==EXIT_PROCESS_DEBUG_EVENT && ev.dwProcessId==pi.dwProcessId) break;
        else if (ev.dwProcessId != pi.dwProcessId) got_child_event = TRUE;

        ret = ContinueDebugEvent(ev.dwProcessId, ev.dwThreadId, DBG_CONTINUE);
        ok(ret, "ContinueDebugEvent failed, last error %d.\n", GetLastError());
        if (!ret) break;
    }
    if(debug_child)
        ok(got_child_event, "didn't get any child events (flag: %x).\n", flag);
    else
        ok(!got_child_event, "got child event (flag: %x).\n", flag);
    CloseHandle(event_init);
    CloseHandle(event_attach);

    ret = CloseHandle(pi.hThread);
    ok(ret, "CloseHandle failed, last error %d.\n", GetLastError());
    ret = CloseHandle(pi.hProcess);
    ok(ret, "CloseHandle failed, last error %d.\n", GetLastError());

    load_blackbox(blackbox_file, &blackbox, sizeof(blackbox));
    ok(!blackbox.failures, "Got %d failures from child process.\n", blackbox.failures);

    ret = DeleteFileA(blackbox_file);
    ok(ret, "DeleteFileA failed, last error %d.\n", GetLastError());
}
