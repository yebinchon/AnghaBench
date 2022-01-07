
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef scalar_t__ pid_t ;
typedef int path ;


 scalar_t__ EINTR ;
 scalar_t__ ENAMETOOLONG ;
 int LOG_INFO ;
 int LOG_WARNING ;
 int O_RDWR ;
 int PATH_MAX ;
 int SIGKILL ;
 scalar_t__ STDERR_FILENO ;
 scalar_t__ STDIN_FILENO ;
 scalar_t__ STDOUT_FILENO ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WNOHANG ;
 int WTERMSIG (int) ;
 scalar_t__ ZEVENT_FILENO ;
 int _exit (int) ;
 int assert (int) ;
 int dup2 (int,scalar_t__) ;
 scalar_t__ errno ;
 int execle (char*,char const*,int *,char**) ;
 scalar_t__ fork () ;
 int kill (scalar_t__,int ) ;
 int nanosleep (struct timespec*,int *) ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int strerror (scalar_t__) ;
 int strsignal (int ) ;
 int umask (int) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;
 int zed_file_close_from (scalar_t__) ;
 int zed_log_msg (int ,char*,char const*,scalar_t__,...) ;

__attribute__((used)) static void
_zed_exec_fork_child(uint64_t eid, const char *dir, const char *prog,
    char *env[], int zfd)
{
 char path[PATH_MAX];
 int n;
 pid_t pid;
 int fd;
 pid_t wpid;
 int status;

 assert(dir != ((void*)0));
 assert(prog != ((void*)0));
 assert(env != ((void*)0));
 assert(zfd >= 0);

 n = snprintf(path, sizeof (path), "%s/%s", dir, prog);
 if ((n < 0) || (n >= sizeof (path))) {
  zed_log_msg(LOG_WARNING,
      "Failed to fork \"%s\" for eid=%llu: %s",
      prog, eid, strerror(ENAMETOOLONG));
  return;
 }
 pid = fork();
 if (pid < 0) {
  zed_log_msg(LOG_WARNING,
      "Failed to fork \"%s\" for eid=%llu: %s",
      prog, eid, strerror(errno));
  return;
 } else if (pid == 0) {
  (void) umask(022);
  if ((fd = open("/dev/null", O_RDWR)) != -1) {
   (void) dup2(fd, STDIN_FILENO);
   (void) dup2(fd, STDOUT_FILENO);
   (void) dup2(fd, STDERR_FILENO);
  }
  (void) dup2(zfd, ZEVENT_FILENO);
  zed_file_close_from(ZEVENT_FILENO + 1);
  execle(path, prog, ((void*)0), env);
  _exit(127);
 }



 zed_log_msg(LOG_INFO, "Invoking \"%s\" eid=%llu pid=%d",
     prog, eid, pid);







 for (n = 0; n < 1000; n++) {
  wpid = waitpid(pid, &status, WNOHANG);
  if (wpid == (pid_t)-1) {
   if (errno == EINTR)
    continue;
   zed_log_msg(LOG_WARNING,
       "Failed to wait for \"%s\" eid=%llu pid=%d",
       prog, eid, pid);
   break;
  } else if (wpid == 0) {
   struct timespec t;


   t.tv_sec = 0;
   t.tv_nsec = 10000000;
   (void) nanosleep(&t, ((void*)0));
   continue;
  }

  if (WIFEXITED(status)) {
   zed_log_msg(LOG_INFO,
       "Finished \"%s\" eid=%llu pid=%d exit=%d",
       prog, eid, pid, WEXITSTATUS(status));
  } else if (WIFSIGNALED(status)) {
   zed_log_msg(LOG_INFO,
       "Finished \"%s\" eid=%llu pid=%d sig=%d/%s",
       prog, eid, pid, WTERMSIG(status),
       strsignal(WTERMSIG(status)));
  } else {
   zed_log_msg(LOG_INFO,
       "Finished \"%s\" eid=%llu pid=%d status=0x%X",
       prog, eid, (unsigned int) status);
  }
  break;
 }




 if (wpid == 0) {
  zed_log_msg(LOG_WARNING, "Killing hung \"%s\" pid=%d",
      prog, pid);
  (void) kill(pid, SIGKILL);
 }
}
