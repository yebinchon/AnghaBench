
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {int l_start; int l_len; int l_whence; int l_type; } ;
typedef int BOOL ;


 int F_SETLK ;
 int F_WRLCK ;
 int False ;
 int SEEK_SET ;
 int True ;
 int fcntl (int,int ,struct flock*) ;

BOOL
rd_lock_file(int fd, int start, int len)
{
 struct flock lock;

 lock.l_type = F_WRLCK;
 lock.l_whence = SEEK_SET;
 lock.l_start = start;
 lock.l_len = len;
 if (fcntl(fd, F_SETLK, &lock) == -1)
  return False;
 return True;
}
