
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int LOCK_EX ;
 int LOCK_NB ;
 int O_CREAT ;
 int O_WRONLY ;
 int close (int) ;
 scalar_t__ errno ;
 int flock (int,int) ;
 int log_debug (char*,...) ;
 int open (char*,int,int) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static int
client_get_lock(char *lockfile)
{
 int lockfd;

 log_debug("lock file is %s", lockfile);

 if ((lockfd = open(lockfile, O_WRONLY|O_CREAT, 0600)) == -1) {
  log_debug("open failed: %s", strerror(errno));
  return (-1);
 }

 if (flock(lockfd, LOCK_EX|LOCK_NB) == -1) {
  log_debug("flock failed: %s", strerror(errno));
  if (errno != EAGAIN)
   return (lockfd);
  while (flock(lockfd, LOCK_EX) == -1 && errno == EINTR)
                ;
  close(lockfd);
  return (-2);
 }
 log_debug("flock succeeded");

 return (lockfd);
}
