
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signal_configuration_t ;
typedef int pid_t ;




 int PRINT_FATAL (char*,char* const,...) ;
 int PRINT_INFO (char*,char* const,int) ;
 int errno ;
 int execvp (char* const,char* const*) ;
 int fork () ;
 scalar_t__ isolate_child () ;
 scalar_t__ restore_signals (int const* const) ;
 int strerror (int) ;

int spawn(const signal_configuration_t* const sigconf_ptr, char* const argv[], int* const child_pid_ptr) {
 pid_t pid;



 pid = fork();
 if (pid < 0) {
  PRINT_FATAL("fork failed: %s", strerror(errno));
  return 1;
 } else if (pid == 0) {


  if (isolate_child()) {
   return 1;
  }


  if (restore_signals(sigconf_ptr)) {
   return 1;
  }

  execvp(argv[0], argv);




  int status = 1;
  switch (errno) {
   case 128:
    status = 127;
    break;
   case 129:
    status = 126;
    break;
  }
  PRINT_FATAL("exec %s failed: %s", argv[0], strerror(errno));
  return status;
 } else {

  PRINT_INFO("Spawned child process '%s' with pid '%i'", argv[0], pid);
  *child_pid_ptr = pid;
  return 0;
 }
}
