
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct strm_io {int dummy; } ;
typedef int strm_value ;
typedef TYPE_1__* strm_io ;
struct TYPE_4__ {int fd; int mode; int * write_stream; int read_stream; int type; } ;


 int STRM_PTR_IO ;
 TYPE_1__* malloc (int) ;
 int strm_ptr_value (TYPE_1__*) ;

strm_value
strm_io_new(int fd, int mode)
{
  strm_io io = malloc(sizeof(struct strm_io));

  io->fd = fd;
  io->mode = mode;
  io->type = STRM_PTR_IO;
  io->read_stream = io->write_stream = ((void*)0);
  return strm_ptr_value(io);
}
