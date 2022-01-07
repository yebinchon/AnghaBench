
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucontext_t ;
typedef int siginfo_t ;


 int LL_WARNING ;
 int UNUSED (int) ;
 int logStackTrace (int *) ;
 int serverLogFromHandler (int ,char*) ;

void watchdogSignalHandler(int sig, siginfo_t *info, void *secret) {



    (void)secret;

    UNUSED(info);
    UNUSED(sig);

    serverLogFromHandler(LL_WARNING,"\n--- WATCHDOG TIMER EXPIRED ---");



    serverLogFromHandler(LL_WARNING,"Sorry: no support for backtrace().");

    serverLogFromHandler(LL_WARNING,"--------\n");
}
