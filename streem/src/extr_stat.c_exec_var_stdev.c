
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stdev_data {double s1; double s2; int mode; int func; scalar_t__ num; } ;
typedef int strm_value ;
typedef int strm_stream ;
typedef enum stdev_mode { ____Placeholder_stdev_mode } stdev_mode ;


 int STRM_NG ;
 int STRM_OK ;
 int iter_stdev ;
 int iter_stdevf ;
 struct stdev_data* malloc (int) ;
 int stdev_finish ;
 int strm_filter ;
 int strm_get_args (int *,int,int *,char*,int *) ;
 int strm_stream_new (int ,int ,int ,void*) ;
 int strm_stream_value (int ) ;

__attribute__((used)) static int
exec_var_stdev(strm_stream* strm, int argc, strm_value* args, strm_value* ret, enum stdev_mode mode)
{
  struct stdev_data* d;
  strm_value func;

  strm_get_args(strm, argc, args, "|v", &func);
  d = malloc(sizeof(struct stdev_data));
  if (!d) return STRM_NG;
  d->num = 0;
  d->s1 = d->s2 = 0.0;
  d->mode = mode;
  if (argc == 0) {
    *ret = strm_stream_value(strm_stream_new(strm_filter, iter_stdev, stdev_finish, (void*)d));
  }
  else {
    d->func = func;
    *ret = strm_stream_value(strm_stream_new(strm_filter, iter_stdevf, stdev_finish, (void*)d));
  }
  return STRM_OK;
}
