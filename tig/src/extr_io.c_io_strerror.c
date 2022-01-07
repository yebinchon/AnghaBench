
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int error; } ;


 char* strerror (int ) ;

char *
io_strerror(struct io *io)
{
 return strerror(io->error);
}
