
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int dummy; } ;


 int IO_RD ;
 scalar_t__ io_read_buf (struct io*,char*,size_t,int) ;
 scalar_t__ io_run (struct io*,int ,char const*,int *,char const**) ;

bool
io_run_buf(const char **argv, char buf[], size_t bufsize, const char *dir, bool allow_empty)
{
 struct io io;

 return io_run(&io, IO_RD, dir, ((void*)0), argv) && io_read_buf(&io, buf, bufsize, allow_empty);
}
