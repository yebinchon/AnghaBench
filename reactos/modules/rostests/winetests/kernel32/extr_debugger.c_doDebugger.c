
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int argc; void* detach_rc; void* detach_err; scalar_t__ pid; void* nokill_rc; void* nokill_err; void* debug_rc; void* debug_err; void* attach_rc; void* attach_err; } ;
typedef TYPE_1__ debugger_blackbox_t ;
typedef int blackbox ;
typedef scalar_t__ INT_PTR ;
typedef int * HANDLE ;


 void* DebugActiveProcess (scalar_t__) ;
 int ExitProcess (int) ;
 int FALSE ;
 void* GetLastError () ;
 int INFINITE ;
 void* SetEvent (int *) ;
 void* TRUE ;
 int WaitForSingleObject (int *,int ) ;
 scalar_t__ atol (char*) ;
 int get_events (char const*,int **,int **) ;
 int * myARGV ;
 void* pDebugActiveProcessStop (scalar_t__) ;
 void* pDebugSetProcessKillOnExit (int ) ;
 int save_blackbox (char const*,TYPE_1__*,int) ;
 scalar_t__ strstr (int ,char*) ;
 int trace (char*) ;

__attribute__((used)) static void doDebugger(int argc, char** argv)
{
    const char* logfile;
    debugger_blackbox_t blackbox;
    HANDLE start_event = 0, done_event = 0, debug_event;

    blackbox.argc=argc;
    logfile=(argc >= 4 ? argv[3] : ((void*)0));
    blackbox.pid=(argc >= 5 ? atol(argv[4]) : 0);

    blackbox.attach_err=0;
    if (strstr(myARGV[2], "attach"))
    {
        blackbox.attach_rc=DebugActiveProcess(blackbox.pid);
        if (!blackbox.attach_rc)
            blackbox.attach_err=GetLastError();
    }
    else
        blackbox.attach_rc=TRUE;

    debug_event=(argc >= 6 ? (HANDLE)(INT_PTR)atol(argv[5]) : ((void*)0));
    blackbox.debug_err=0;
    if (debug_event && strstr(myARGV[2], "event"))
    {
        blackbox.debug_rc=SetEvent(debug_event);
        if (!blackbox.debug_rc)
            blackbox.debug_err=GetLastError();
    }
    else
        blackbox.debug_rc=TRUE;

    if (logfile)
    {
        get_events(logfile, &start_event, &done_event);
    }

    if (strstr(myARGV[2], "order"))
    {
        trace("debugger: waiting for the start signal...\n");
        WaitForSingleObject(start_event, INFINITE);
    }

    blackbox.nokill_err=0;
    if (strstr(myARGV[2], "nokill"))
    {
        blackbox.nokill_rc=pDebugSetProcessKillOnExit(FALSE);
        if (!blackbox.nokill_rc)
            blackbox.nokill_err=GetLastError();
    }
    else
        blackbox.nokill_rc=TRUE;

    blackbox.detach_err=0;
    if (strstr(myARGV[2], "detach"))
    {
        blackbox.detach_rc=pDebugActiveProcessStop(blackbox.pid);
        if (!blackbox.detach_rc)
            blackbox.detach_err=GetLastError();
    }
    else
        blackbox.detach_rc=TRUE;

    if (logfile)
    {
        save_blackbox(logfile, &blackbox, sizeof(blackbox));
    }
    trace("debugger: done debugging...\n");
    SetEvent(done_event);


    ExitProcess(0xdeadbeef);
}
