
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniq_data {int init; void* func; void* last; } ;
typedef void* strm_value ;
typedef int strm_stream ;


 int FALSE ;
 int STRM_NG ;
 int STRM_OK ;
 int iter_uniq ;
 int iter_uniqf ;
 struct uniq_data* malloc (int) ;
 int strm_filter ;
 int strm_get_args (int *,int,void**,char*,void**) ;
 scalar_t__ strm_nil_p (void*) ;
 void* strm_nil_value () ;
 int strm_stream_new (int ,int ,int *,void*) ;
 void* strm_stream_value (int ) ;

__attribute__((used)) static int
exec_uniq(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct uniq_data* d;
  strm_value func = strm_nil_value();

  strm_get_args(strm, argc, args, "|v", &func);
  d = malloc(sizeof(*d));
  if (!d) return STRM_NG;
  d->last = strm_nil_value();
  d->func = func;
  d->init = FALSE;
  *ret = strm_stream_value(strm_stream_new(strm_filter,
                                           strm_nil_p(func) ? iter_uniq : iter_uniqf,
                                           ((void*)0), (void*)d));
  return STRM_OK;
}
