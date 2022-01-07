
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sample_data {int len; int seed; scalar_t__ i; } ;
typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;


 int STRM_NG ;
 int STRM_OK ;
 int finish_sample ;
 int iter_sample ;
 struct sample_data* malloc (int) ;
 int strm_filter ;
 int strm_get_args (int *,int,int *,char*,int*) ;
 int strm_stream_new (int ,int ,int ,void*) ;
 int strm_stream_value (int ) ;
 int xorshift128init (int ) ;

__attribute__((used)) static int
exec_sample(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct sample_data* d;
  strm_int len;

  strm_get_args(strm, argc, args, "i", &len);
  d = malloc(sizeof(struct sample_data)+sizeof(strm_value)*len);
  if (!d) return STRM_NG;
  d->len = len;
  d->i = 0;
  xorshift128init(d->seed);
  *ret = strm_stream_value(strm_stream_new(strm_filter, iter_sample,
                                           finish_sample, (void*)d));
  return STRM_OK;
}
