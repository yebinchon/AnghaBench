
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long tv_sec; long tv_usec; } ;
typedef int strm_value ;


 scalar_t__ STRM_NG ;
 int strm_nil_value () ;
 scalar_t__ time_alloc (struct timeval*,int,int *) ;

strm_value
strm_time_new(long sec, long usec, int offset)
{
  struct timeval tv;
  strm_value v;

  tv.tv_sec = sec;
  tv.tv_usec = usec;
  if (time_alloc(&tv, offset, &v) == STRM_NG) {
    return strm_nil_value();
  }
  return v;
}
