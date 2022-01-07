
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ strm_stream ;


 int STRM_IO_NOWAIT ;
 int io_pop (int) ;
 int io_wait_num ;
 int strm_stream_close (TYPE_1__*) ;

__attribute__((used)) static void
strm_io_stop(strm_stream* strm, int fd)
{
  if ((strm->flags & STRM_IO_NOWAIT) == 0) {
    io_wait_num--;
    io_pop(fd);
  }
  strm_stream_close(strm);
}
