
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sum_data {int func; scalar_t__ num; scalar_t__ c; scalar_t__ sum; } ;
typedef int strm_value ;
typedef int strm_stream ;


 int STRM_NG ;
 int STRM_OK ;
 int avg_finish ;
 int iter_sum ;
 int iter_sumf ;
 struct sum_data* malloc (int) ;
 int strm_filter ;
 int strm_get_args (int *,int,int *,char*,int *) ;
 int strm_nil_value () ;
 int strm_stream_new (int ,int ,int ,void*) ;
 int strm_stream_value (int ) ;
 int sum_finish ;

__attribute__((used)) static int
exec_sum_avg(strm_stream* strm, int argc, strm_value* args, strm_value* ret, int avg)
{
  struct sum_data* d;
  strm_value func;

  strm_get_args(strm, argc, args, "|v", &func);
  d = malloc(sizeof(struct sum_data));
  if (!d) return STRM_NG;
  d->sum = 0;
  d->c = 0;
  d->num = 0;
  if (argc == 0) {
    d->func = strm_nil_value();
    *ret = strm_stream_value(strm_stream_new(strm_filter, iter_sum,
                                             avg ? avg_finish : sum_finish, (void*)d));
  }
  else {
    d->func = func;
    *ret = strm_stream_value(strm_stream_new(strm_filter, iter_sumf,
                                             avg ? avg_finish : sum_finish, (void*)d));
  }
  return STRM_OK;
}
