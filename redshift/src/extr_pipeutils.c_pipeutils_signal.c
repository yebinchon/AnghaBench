
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int write (int,char*,int) ;

void
pipeutils_signal(int write_fd)
{
 write(write_fd, "", 1);
}
