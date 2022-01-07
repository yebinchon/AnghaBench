
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct strm_time {int utc_offset; int tv; } ;
typedef int strm_value ;
typedef int strm_stream ;


 int STRM_NG ;
 struct strm_time* get_time (int ) ;
 int num_to_timeval (int ,struct timeval*) ;
 int strm_number_p (int ) ;
 int strm_raise (int *,char*) ;
 int strm_value_float (int ) ;
 int time_alloc (struct timeval*,int ,int *) ;
 int timeradd (int *,struct timeval*,struct timeval*) ;

__attribute__((used)) static int
time_plus(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct strm_time* t1;
  struct timeval tv, tv2;

  if (argc != 2) {
    strm_raise(strm, "wrong # of arguments");
    return STRM_NG;
  }
  t1 = get_time(args[0]);
  if (!strm_number_p(args[1])) {
    strm_raise(strm, "number required");
    return STRM_NG;
  }
  num_to_timeval(strm_value_float(args[1]), &tv);
  timeradd(&t1->tv, &tv, &tv2);
  return time_alloc(&tv2, t1->utc_offset, ret);
}
