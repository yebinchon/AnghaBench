
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int dummy; } ;
typedef enum io_type { ____Placeholder_io_type } io_type ;


 scalar_t__ io_done (struct io*) ;
 scalar_t__ io_exec (struct io*,int,char const*,int *,char const**,int) ;

bool
io_complete(enum io_type type, const char **argv, const char *dir, int fd)
{
 struct io io;

 return io_exec(&io, type, dir, ((void*)0), argv, fd) && io_done(&io);
}
