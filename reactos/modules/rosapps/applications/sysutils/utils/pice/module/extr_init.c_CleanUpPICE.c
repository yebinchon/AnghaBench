
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ConsoleShutdown () ;
 int DPRINT (int ) ;
 int DeInstallDblFltHook () ;
 int DeInstallGPFaultHook () ;
 int DeInstallGlobalKeyboardHook () ;
 int DeInstallInt3Hook () ;
 int DeInstallIntEHook () ;
 int DeInstallPrintkHook () ;
 int DeInstallSyscallHook () ;
 int DeInstallTraceHook () ;
 int OUTPUT_WINDOW ;
 int Print (int ,char*) ;
 int RemovePiceRunningTimer () ;
 int RestoreIdt () ;
 int RestoreKeyboardDriver () ;
 int UnloadExports () ;
 int UnloadSymbols () ;

void CleanUpPICE(void)
{
    DPRINT((0,"CleanUpPICE(): trace step 1\n"));
 RemovePiceRunningTimer();

    DPRINT((0,"CleanUpPICE(): trace step 2\n"));

    DeInstallGlobalKeyboardHook();
    DeInstallSyscallHook();
    DeInstallInt3Hook();
    DeInstallPrintkHook();
    DeInstallDblFltHook();
    DeInstallGPFaultHook();
    DeInstallIntEHook();
    DeInstallTraceHook();

    DPRINT((0,"CleanUpPICE(): trace step 3\n"));
    RestoreIdt();

    DPRINT((0,"CleanUpPICE(): trace step 4\n"));
    UnloadExports();
    UnloadSymbols();

    DPRINT((0,"CleanUpPICE(): trace step 5\n"));

    RestoreKeyboardDriver();

    DPRINT((0,"CleanUpPICE(): trace step 6\n"));
    Print(OUTPUT_WINDOW,"pICE: shutting down...\n");

    DPRINT((0,"CleanUpPICE(): trace step 7\n"));

 ConsoleShutdown();
}
