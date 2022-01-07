
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; int sa_flags; int sa_mask; } ;


 int SA_RESTART ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGTERM ;
 int SIG_IGN ;
 int _exit_handler ;
 int _hup_handler ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;
 scalar_t__ sigemptyset (int *) ;
 int zed_log_die (char*) ;

__attribute__((used)) static void
_setup_sig_handlers(void)
{
 struct sigaction sa;

 if (sigemptyset(&sa.sa_mask) < 0)
  zed_log_die("Failed to initialize sigset");

 sa.sa_flags = SA_RESTART;
 sa.sa_handler = SIG_IGN;

 if (sigaction(SIGPIPE, &sa, ((void*)0)) < 0)
  zed_log_die("Failed to ignore SIGPIPE");

 sa.sa_handler = _exit_handler;
 if (sigaction(SIGINT, &sa, ((void*)0)) < 0)
  zed_log_die("Failed to register SIGINT handler");

 if (sigaction(SIGTERM, &sa, ((void*)0)) < 0)
  zed_log_die("Failed to register SIGTERM handler");

 sa.sa_handler = _hup_handler;
 if (sigaction(SIGHUP, &sa, ((void*)0)) < 0)
  zed_log_die("Failed to register SIGHUP handler");
}
