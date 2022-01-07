
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;


 int BACKTRACE_SZ ;
 int SIG_DFL ;
 int STDERR_FILENO ;
 int backtrace (void**,int) ;
 int backtrace_symbols_fd (void**,int,int ) ;
 int dump_debug_buffer () ;
 int raise (int) ;
 int sigaction (int,struct sigaction*,int *) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void sig_handler(int signo)
{
 struct sigaction action;







 dump_debug_buffer();





 action.sa_handler = SIG_DFL;
 sigemptyset(&action.sa_mask);
 action.sa_flags = 0;
 (void) sigaction(signo, &action, ((void*)0));
 raise(signo);
}
