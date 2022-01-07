
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int read (int,char*,int) ;

__attribute__((used)) static int
recv_read(int fd, void *buf, int ilen)
{
 char *cp = buf;
 int rv;
 int len = ilen;

 do {
  rv = read(fd, cp, len);
  cp += rv;
  len -= rv;
 } while (rv > 0);

 if (rv < 0 || len != 0)
  return (EIO);

 return (0);
}
