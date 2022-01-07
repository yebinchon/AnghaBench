
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucontext_t ;


 int backtrace (void**,int) ;
 int backtrace_symbols_fd (void**,int,int) ;
 int closeDirectLogFiledes (int) ;
 int * getMcontextEip (int *) ;
 int openDirectLogFiledes () ;
 int strlen (char*) ;
 int write (int,char*,int ) ;

void logStackTrace(ucontext_t *uc) {
    void *trace[101];
    int trace_size = 0, fd = openDirectLogFiledes();

    if (fd == -1) return;


    trace_size = backtrace(trace+1, 100);

    if (getMcontextEip(uc) != ((void*)0)) {
        char *msg1 = "EIP:\n";
        char *msg2 = "\nBacktrace:\n";
        if (write(fd,msg1,strlen(msg1)) == -1) { };
        trace[0] = getMcontextEip(uc);
        backtrace_symbols_fd(trace, 1, fd);
        if (write(fd,msg2,strlen(msg2)) == -1) { };
    }


    backtrace_symbols_fd(trace+1, trace_size, fd);


    closeDirectLogFiledes(fd);
}
