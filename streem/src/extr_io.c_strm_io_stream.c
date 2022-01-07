
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_io ;




 int assert (int ) ;
 int strm_io_p (int ) ;
 int * strm_readio (int ) ;
 int strm_value_io (int ) ;
 int * strm_writeio (int ) ;

strm_stream*
strm_io_stream(strm_value iov, int mode)
{
  strm_io io;

  assert(strm_io_p(iov));
  io = strm_value_io(iov);
  switch (mode) {
  case 129:
    return strm_readio(io);
  case 128:
    return strm_writeio(io);
 default:
   return ((void*)0);
  }
}
