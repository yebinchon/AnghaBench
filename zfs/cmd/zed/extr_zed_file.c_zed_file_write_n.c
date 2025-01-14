
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int write (int,unsigned char const*,size_t) ;

ssize_t
zed_file_write_n(int fd, void *buf, size_t n)
{
 const unsigned char *p;
 size_t n_left;
 ssize_t n_written;

 p = buf;
 n_left = n;
 while (n_left > 0) {
  if ((n_written = write(fd, p, n_left)) < 0) {
   if (errno == EINTR)
    continue;
   else
    return (-1);

  }
  n_left -= n_written;
  p += n_written;
 }
 return (n);
}
