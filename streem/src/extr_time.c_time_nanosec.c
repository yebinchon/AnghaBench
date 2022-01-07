
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_usec; } ;
struct strm_time {TYPE_1__ tv; } ;
typedef int strm_value ;
typedef int strm_stream ;


 int STRM_OK ;
 struct strm_time* get_time (int ) ;
 int strm_get_args (int *,int,int *,char*,int *) ;
 int strm_int_value (int) ;

__attribute__((used)) static int
time_nanosec(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value time;
  struct strm_time *t;

  strm_get_args(strm, argc, args, "v", &time);
  t = get_time(time);
  *ret = strm_int_value(t->tv.tv_usec*1000);
  return STRM_OK;
}
