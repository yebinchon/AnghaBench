
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
struct event_base {int dummy; } ;


 int AF_UNIX ;
 scalar_t__ ECONNREFUSED ;
 scalar_t__ ENAMETOOLONG ;
 scalar_t__ ENOENT ;
 int SOCK_STREAM ;
 int client_get_lock (char*) ;
 int client_proc ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 scalar_t__ errno ;
 int free (char*) ;
 int log_debug (char*,...) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int server_start (int ,struct event_base*,int,char*) ;
 int setblocking (int,int ) ;
 int socket (int ,int ,int ) ;
 int strerror (scalar_t__) ;
 size_t strlcpy (int ,char const*,int) ;
 scalar_t__ unlink (char const*) ;
 int xasprintf (char**,char*,char const*) ;

__attribute__((used)) static int
client_connect(struct event_base *base, const char *path, int start_server)
{
 struct sockaddr_un sa;
 size_t size;
 int fd, lockfd = -1, locked = 0;
 char *lockfile = ((void*)0);

 memset(&sa, 0, sizeof sa);
 sa.sun_family = AF_UNIX;
 size = strlcpy(sa.sun_path, path, sizeof sa.sun_path);
 if (size >= sizeof sa.sun_path) {
  errno = ENAMETOOLONG;
  return (-1);
 }
 log_debug("socket is %s", path);

retry:
 if ((fd = socket(AF_UNIX, SOCK_STREAM, 0)) == -1)
  return (-1);

 log_debug("trying connect");
 if (connect(fd, (struct sockaddr *)&sa, sizeof sa) == -1) {
  log_debug("connect failed: %s", strerror(errno));
  if (errno != ECONNREFUSED && errno != ENOENT)
   goto failed;
  if (!start_server)
   goto failed;
  close(fd);

  if (!locked) {
   xasprintf(&lockfile, "%s.lock", path);
   if ((lockfd = client_get_lock(lockfile)) < 0) {
    log_debug("didn't get lock (%d)", lockfd);

    free(lockfile);
    lockfile = ((void*)0);

    if (lockfd == -2)
     goto retry;
   }
   log_debug("got lock (%d)", lockfd);







   locked = 1;
   goto retry;
  }

  if (lockfd >= 0 && unlink(path) != 0 && errno != ENOENT) {
   free(lockfile);
   close(lockfd);
   return (-1);
  }
  fd = server_start(client_proc, base, lockfd, lockfile);
 }

 if (locked && lockfd >= 0) {
  free(lockfile);
  close(lockfd);
 }
 setblocking(fd, 0);
 return (fd);

failed:
 if (locked) {
  free(lockfile);
  close(lockfd);
 }
 close(fd);
 return (-1);
}
