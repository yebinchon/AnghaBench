
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {scalar_t__ l_len; scalar_t__ l_start; int l_whence; int l_type; } ;


 scalar_t__ EACCES ;
 scalar_t__ EAGAIN ;
 scalar_t__ EBADF ;
 int F_SETLK ;
 int F_WRLCK ;
 int SEEK_SET ;
 scalar_t__ errno ;
 scalar_t__ fcntl (int,int ,struct flock*) ;

int
zed_file_lock(int fd)
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

 if (fcntl(fd, F_SETLK, &lock) < 0) {
  if ((errno == EACCES) || (errno == EAGAIN))
   return (1);

  return (-1);
 }
 return (0);
}
