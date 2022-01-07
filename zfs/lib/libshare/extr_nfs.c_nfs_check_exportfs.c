
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 scalar_t__ EINTR ;
 int FD_CLOEXEC ;
 int F_SETFD ;
 int SA_CONFIG_ERR ;
 int SA_OK ;
 int SA_SYSTEM_ERR ;
 int STDOUT_FILENO ;
 scalar_t__ WEXITSTATUS (int) ;
 int WIFEXITED (int) ;
 int close (int) ;
 scalar_t__ dup2 (int,int ) ;
 scalar_t__ errno ;
 int execlp (char*,char*,char*,int *) ;
 int exit (int) ;
 int fcntl (int,int ,int ) ;
 scalar_t__ fork () ;
 int mkstemp (char*) ;
 int nfs_exportfs_temp_fd ;
 int unlink (char*) ;
 int waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static int
nfs_check_exportfs(void)
{
 pid_t pid;
 int rc, status;
 static char nfs_exportfs_tempfile[] = "/tmp/exportfs.XXXXXX";





 if (nfs_exportfs_temp_fd >= 0)
  close(nfs_exportfs_temp_fd);

 nfs_exportfs_temp_fd = mkstemp(nfs_exportfs_tempfile);

 if (nfs_exportfs_temp_fd < 0)
  return (SA_SYSTEM_ERR);

 unlink(nfs_exportfs_tempfile);

 (void) fcntl(nfs_exportfs_temp_fd, F_SETFD, FD_CLOEXEC);

 pid = fork();

 if (pid < 0) {
  (void) close(nfs_exportfs_temp_fd);
  nfs_exportfs_temp_fd = -1;
  return (SA_SYSTEM_ERR);
 }

 if (pid > 0) {
  while ((rc = waitpid(pid, &status, 0)) <= 0 &&
      errno == EINTR) { }

  if (rc <= 0) {
   (void) close(nfs_exportfs_temp_fd);
   nfs_exportfs_temp_fd = -1;
   return (SA_SYSTEM_ERR);
  }

  if (!WIFEXITED(status) || WEXITSTATUS(status) != 0) {
   (void) close(nfs_exportfs_temp_fd);
   nfs_exportfs_temp_fd = -1;
   return (SA_CONFIG_ERR);
  }

  return (SA_OK);
 }





 if (dup2(nfs_exportfs_temp_fd, STDOUT_FILENO) < 0)
  exit(1);

 rc = execlp("/usr/sbin/exportfs", "exportfs", "-v", ((void*)0));

 if (rc < 0) {
  exit(1);
 }

 exit(0);
}
