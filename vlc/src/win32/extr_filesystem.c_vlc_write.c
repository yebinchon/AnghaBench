
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int write (int,void const*,size_t) ;

ssize_t vlc_write(int fd, const void *buf, size_t len)
{
    return write(fd, buf, len);
}
