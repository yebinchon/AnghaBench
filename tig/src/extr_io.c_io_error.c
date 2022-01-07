
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io {int error; } ;



int
io_error(struct io *io)
{
 return io->error;
}
