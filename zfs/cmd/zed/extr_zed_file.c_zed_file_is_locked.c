
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {scalar_t__ l_type; int l_pid; scalar_t__ l_len; scalar_t__ l_start; int l_whence; } ;
typedef int pid_t ;


 int EBADF ;
 int F_GETLK ;
 scalar_t__ F_UNLCK ;
 scalar_t__ F_WRLCK ;
 int SEEK_SET ;
 int errno ;
 scalar_t__ fcntl (int,int ,struct flock*) ;

pid_t
zed_file_is_locked(int fd)
{
 struct flock lock;

 if (fd < 0) {
  errno = EBADF;
  return (-1);
 }
 lock.l_type = F_WRLCK;
 lock.l_whence = SEEK_SET;
 lock.l_start = 0;
 lock.l_len = 0;

 if (fcntl(fd, F_GETLK, &lock) < 0)
  return (-1);

 if (lock.l_type == F_UNLCK)
  return (0);

 return (lock.l_pid);
}
