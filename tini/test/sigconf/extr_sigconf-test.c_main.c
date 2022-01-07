
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIGILL ;
 int SIGINT ;
 int SIGSEGV ;
 int SIGTERM ;
 int SIGTTIN ;
 int SIGTTOU ;
 int SIG_BLOCK ;
 int SIG_IGN ;
 int execvp (char*,char**) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int signal (int ,int ) ;
 int sigprocmask (int ,int *,int *) ;

int main(int argc, char *argv[]) {

 signal(SIGTTOU, SIG_IGN);
 signal(SIGSEGV, SIG_IGN);
 signal(SIGINT, SIG_IGN);


 sigset_t set;
 sigemptyset(&set);
 sigaddset(&set, SIGTTIN);
 sigaddset(&set, SIGILL);
 sigaddset(&set, SIGTERM);
 sigprocmask(SIG_BLOCK, &set, ((void*)0));


 execvp(argv[1], argv+1);
}
