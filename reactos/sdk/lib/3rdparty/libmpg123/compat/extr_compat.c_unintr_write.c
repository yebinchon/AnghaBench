
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 scalar_t__ write (int,char*,size_t) ;

size_t unintr_write(int fd, void const *buffer, size_t bytes)
{
 size_t written = 0;
 while(bytes)
 {
  ssize_t part = write(fd, (char*)buffer+written, bytes);
  if(part < 0 && errno != EINTR)
   break;
  bytes -= part;
  written += part;
 }
 return written;
}
