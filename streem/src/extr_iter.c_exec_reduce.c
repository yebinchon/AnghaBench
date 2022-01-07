
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reduce_data {void* func; void* acc; int init; } ;
typedef void* strm_value ;
typedef int strm_stream ;


 int FALSE ;
 int STRM_NG ;
 int STRM_OK ;
 int TRUE ;
 int iter_reduce ;
 struct reduce_data* malloc (int) ;
 int reduce_finish ;
 int strm_filter ;
 int strm_get_args (int *,int,void**,char*,void**,void**) ;
 void* strm_nil_value () ;
 int strm_stream_new (int ,int ,int ,void*) ;
 void* strm_stream_value (int ) ;

__attribute__((used)) static int
exec_reduce(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct reduce_data* d;
  strm_value v1, v2;

  strm_get_args(strm, argc, args, "v|v", &v1, &v2);
  d = malloc(sizeof(*d));
  if (!d) return STRM_NG;
  if (argc == 2) {
    d->init = TRUE;
    d->acc = v1;
    d->func = v2;
  }
  else {
    d->init = FALSE;
    d->acc = strm_nil_value();
    d->func = v1;
  }
  *ret = strm_stream_value(strm_stream_new(strm_filter, iter_reduce, reduce_finish, (void*)d));
  return STRM_OK;
}
