
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int read (int,unsigned char*,size_t) ;

ssize_t
zed_file_read_n(int fd, void *buf, size_t n)
{
 unsigned char *p;
 size_t n_left;
 ssize_t n_read;

 p = buf;
 n_left = n;
 while (n_left > 0) {
  if ((n_read = read(fd, p, n_left)) < 0) {
   if (errno == EINTR)
    continue;
   else
    return (-1);

  } else if (n_read == 0) {
   break;
  }
  n_left -= n_read;
  p += n_read;
 }
 return (n - n_left);
}
