
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_pid (char const*) ;
 scalar_t__ daemon (int,int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ redirect_fds () ;
 int stderr ;
 int write_pid (char const*) ;

int
daemon_init(const char *pidfile) {
 int pid = check_pid(pidfile);

 if (pid) {
  fprintf(stderr, "Skynet is already running, pid = %d.\n", pid);
  return 1;
 }




 if (daemon(1,1)) {
  fprintf(stderr, "Can't daemonize.\n");
  return 1;
 }


 pid = write_pid(pidfile);
 if (pid == 0) {
  return 1;
 }

 if (redirect_fds()) {
  return 1;
 }

 return 0;
}
