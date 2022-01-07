
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 scalar_t__ read (int,char*,size_t) ;

size_t unintr_read(int fd, void *buffer, size_t bytes)
{
 size_t got = 0;
 while(bytes)
 {
  ssize_t part = read(fd, (char*)buffer+got, bytes);
  if(part < 0 && errno != EINTR)
   break;
  bytes -= part;
  got += part;
 }
 return got;
}
