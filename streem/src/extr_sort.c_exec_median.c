
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sort_data {int capa; void* buf; scalar_t__ len; int func; } ;
typedef int strm_value ;
typedef int strm_stream ;


 int SORT_FIRST_CAPA ;
 int STRM_NG ;
 int STRM_OK ;
 int finish_median ;
 int free (struct sort_data*) ;
 int iter_median ;
 void* malloc (int) ;
 int strm_filter ;
 int strm_get_args (int *,int,int *,char*,int *) ;
 int strm_nil_value () ;
 int strm_stream_new (int ,int ,int ,void*) ;
 int strm_stream_value (int ) ;

__attribute__((used)) static int
exec_median(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct sort_data* d;
  strm_value func;

  strm_get_args(strm, argc, args, "|v", &func);

  d = malloc(sizeof(struct sort_data));
  if (!d) return STRM_NG;
  d->func = (argc == 0) ? strm_nil_value() : func;
  d->len = 0;
  d->capa = SORT_FIRST_CAPA;
  d->buf = malloc(sizeof(strm_value)*SORT_FIRST_CAPA);
  if (!d->buf) {
    free(d);
    return STRM_NG;
  }
  *ret = strm_stream_value(strm_stream_new(strm_filter, iter_median,
                                           finish_median, (void*)d));
  return STRM_OK;
}
