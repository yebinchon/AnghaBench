
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_stream ;
typedef int strm_callback ;


 scalar_t__ io_push (int,int *,int ) ;
 int io_wait_num ;

void
strm_io_start_read(strm_stream* strm, int fd, strm_callback cb)
{
  if (io_push(fd, strm, cb) == 0) {
    io_wait_num++;
  }
}
