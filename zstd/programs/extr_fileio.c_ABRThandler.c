
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY (char*,...) ;
 int MAX_STACK_FRAMES ;





 int SIG_DFL ;
 int ZSTD_START_SYMBOLLIST_FRAME ;
 int backtrace (void**,int) ;
 char** backtrace_symbols (void**,int) ;
 int free (char**) ;
 int raise (int) ;
 int signal (int,int ) ;

__attribute__((used)) static void ABRThandler(int sig) {
    const char* name;
    void* addrlist[MAX_STACK_FRAMES];
    char** symbollist;
    int addrlen, i;

    switch (sig) {
        case 132: name = "SIGABRT"; break;
        case 131: name = "SIGFPE"; break;
        case 130: name = "SIGILL"; break;
        case 129: name = "SIGINT"; break;
        case 128: name = "SIGSEGV"; break;
        default: name = "UNKNOWN";
    }

    DISPLAY("Caught %s signal, printing stack:\n", name);

    addrlen = backtrace(addrlist, MAX_STACK_FRAMES);
    if (addrlen == 0) {
        DISPLAY("\n");
        return;
    }

    symbollist = backtrace_symbols(addrlist, addrlen);

    for (i = ZSTD_START_SYMBOLLIST_FRAME; i < addrlen; i++) {
        DISPLAY("%s\n", symbollist[i]);
    }
    free(symbollist);

    signal(sig, SIG_DFL);
    raise(sig);
}
