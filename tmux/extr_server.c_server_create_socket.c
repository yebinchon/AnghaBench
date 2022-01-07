
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int mode_t ;


 int AF_UNIX ;
 int ENAMETOOLONG ;
 int SOCK_STREAM ;
 int S_IRWXO ;
 int S_IXGRP ;
 int S_IXUSR ;
 int bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int errno ;
 int listen (int,int) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int setblocking (int,int ) ;
 int socket (int ,int ,int ) ;
 int socket_path ;
 int strerror (int) ;
 size_t strlcpy (int ,int ,int) ;
 int umask (int) ;
 int unlink (int ) ;
 int xasprintf (char**,char*,int ,int ) ;

__attribute__((used)) static int
server_create_socket(char **cause)
{
 struct sockaddr_un sa;
 size_t size;
 mode_t mask;
 int fd, saved_errno;

 memset(&sa, 0, sizeof sa);
 sa.sun_family = AF_UNIX;
 size = strlcpy(sa.sun_path, socket_path, sizeof sa.sun_path);
 if (size >= sizeof sa.sun_path) {
  errno = ENAMETOOLONG;
  goto fail;
 }
 unlink(sa.sun_path);

 if ((fd = socket(AF_UNIX, SOCK_STREAM, 0)) == -1)
  goto fail;

 mask = umask(S_IXUSR|S_IXGRP|S_IRWXO);
 if (bind(fd, (struct sockaddr *)&sa, sizeof sa) == -1) {
  saved_errno = errno;
  close(fd);
  errno = saved_errno;
  goto fail;
 }
 umask(mask);

 if (listen(fd, 128) == -1) {
  saved_errno = errno;
  close(fd);
  errno = saved_errno;
  goto fail;
 }
 setblocking(fd, 0);

 return (fd);

fail:
 if (cause != ((void*)0)) {
  xasprintf(cause, "error creating %s (%s)", socket_path,
      strerror(errno));
 }
 return (-1);
}
