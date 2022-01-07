
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tv_usec; int tv_sec; } ;
struct strm_time {TYPE_1__ tv; } ;
typedef int strm_value ;
typedef int strm_stream ;


 int STRM_OK ;
 struct strm_time* get_time (int ) ;
 int strm_float_value (int ) ;
 int strm_get_args (int *,int,int *,char*,int *) ;
 int strm_int_value (int ) ;
 int timeval_to_num (TYPE_1__*) ;

__attribute__((used)) static int
time_num(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value time;
  struct strm_time *t;

  strm_get_args(strm, argc, args, "v", &time);
  t = get_time(time);
  if (t->tv.tv_usec == 0) {
    *ret = strm_int_value(t->tv.tv_sec);
  }
  else {
    *ret = strm_float_value(timeval_to_num(&t->tv));
  }
  return STRM_OK;
}
