
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write (int,void*,int) ;

int
rd_write_file(int fd, void *ptr, int len)
{
 return write(fd, ptr, len);
}
