
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minmax_data {int min; void* func; void* data; scalar_t__ num; int start; } ;
typedef void* strm_value ;
typedef int strm_stream ;


 int STRM_NG ;
 int STRM_OK ;
 int TRUE ;
 int iter_minmax ;
 struct minmax_data* malloc (int) ;
 int minmax_finish ;
 int strm_filter ;
 int strm_get_args (int *,int,void**,char*,void**) ;
 void* strm_nil_value () ;
 int strm_stream_new (int ,int ,int ,void*) ;
 void* strm_stream_value (int ) ;

__attribute__((used)) static int
exec_minmax(strm_stream* strm, int argc, strm_value* args, strm_value* ret, int min)
{
  struct minmax_data* d;
  strm_value func = strm_nil_value();

  strm_get_args(strm, argc, args, "|v", &func);
  d = malloc(sizeof(*d));
  if (!d) return STRM_NG;
  d->start = TRUE;
  d->min = min;
  d->num = 0;
  d->data = strm_nil_value();
  d->func = func;
  *ret = strm_stream_value(strm_stream_new(strm_filter, iter_minmax, minmax_finish, (void*)d));
  return STRM_OK;
}
