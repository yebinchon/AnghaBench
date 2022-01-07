
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slice_data {int n; void* buf; scalar_t__ i; } ;
typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;


 int STRM_NG ;
 int STRM_OK ;
 int finish_consec ;
 int free (struct slice_data*) ;
 int iter_consec ;
 void* malloc (int) ;
 int strm_filter ;
 int strm_get_args (int *,int,int *,char*,int*) ;
 int strm_stream_new (int ,int ,int ,void*) ;
 int strm_stream_value (int ) ;

__attribute__((used)) static int
exec_consec(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct slice_data* d;
  strm_int n;

  strm_get_args(strm, argc, args, "i", &n);
  d = malloc(sizeof(*d));
  if (!d) return STRM_NG;
  d->n = n;
  d->i = 0;
  d->buf = malloc(n*sizeof(strm_value));
  if (!d->buf) {
    free(d);
    return STRM_NG;
  }
  *ret = strm_stream_value(strm_stream_new(strm_filter, iter_consec, finish_consec, (void*)d));
  return STRM_OK;
}
