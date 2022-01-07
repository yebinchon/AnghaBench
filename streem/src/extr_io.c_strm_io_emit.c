
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_callback ;


 int io_kick (int,int *,int ) ;
 int strm_emit (int *,int ,int *) ;

void
strm_io_emit(strm_stream* strm, strm_value data, int fd, strm_callback cb)
{
  strm_emit(strm, data, ((void*)0));
  io_kick(fd, strm, cb);
}
