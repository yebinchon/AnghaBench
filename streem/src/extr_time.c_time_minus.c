
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct strm_time {int tv; } ;
typedef int strm_value ;
typedef int strm_stream ;


 int STRM_NG ;
 int STRM_OK ;
 struct strm_time* get_time (int ) ;
 int strm_float_value (double) ;
 scalar_t__ strm_number_p (int ) ;
 int strm_raise (int *,char*) ;
 double strm_value_float (int ) ;
 int time_plus (int *,int,int *,int *) ;
 int timersub (int *,int *,struct timeval*) ;
 double timeval_to_num (struct timeval*) ;

__attribute__((used)) static int
time_minus(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct strm_time *t1;
  struct strm_time *t2;
  struct timeval tv;
  double d;

  if (argc != 2) {
    strm_raise(strm, "wrong # of arguments");
    return STRM_NG;
  }
  if (strm_number_p(args[1])) {
    d = strm_value_float(args[1]);
    args[1] = strm_float_value(-d);
    return time_plus(strm, argc, args, ret);
  }
  t1 = get_time(args[0]);
  t2 = get_time(args[1]);
  timersub(&t1->tv, &t2->tv, &tv);
  d = timeval_to_num(&tv);
  *ret = strm_float_value(d);
  return STRM_OK;
}
