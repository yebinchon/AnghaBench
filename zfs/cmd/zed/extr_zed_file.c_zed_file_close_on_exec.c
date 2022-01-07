
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBADF ;
 int FD_CLOEXEC ;
 int F_GETFD ;
 int F_SETFD ;
 int errno ;
 int fcntl (int,int ,...) ;

int
zed_file_close_on_exec(int fd)
{
 int flags;

 if (fd < 0) {
  errno = EBADF;
  return (-1);
 }
 flags = fcntl(fd, F_GETFD);
 if (flags == -1)
  return (-1);

 flags |= FD_CLOEXEC;

 if (fcntl(fd, F_SETFD, flags) == -1)
  return (-1);

 return (0);
}
