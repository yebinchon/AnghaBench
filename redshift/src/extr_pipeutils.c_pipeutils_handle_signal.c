
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read (int,char*,int) ;

void
pipeutils_handle_signal(int read_fd)
{
 char data;
 read(read_fd, &data, 1);
}
