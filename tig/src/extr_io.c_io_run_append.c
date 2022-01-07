
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IO_AP ;
 int io_complete (int ,char const**,int *,int) ;

bool
io_run_append(const char **argv, int fd)
{
 return io_complete(IO_AP, argv, ((void*)0), fd);
}
