
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvavg_data {int num; void* func_p; int func; void* filled; scalar_t__ i; } ;
typedef int strm_value ;
typedef int strm_stream ;
typedef int strm_int ;


 void* FALSE ;
 int STRM_NG ;
 int STRM_OK ;
 void* TRUE ;
 int iter_mvavg ;
 struct mvavg_data* malloc (int) ;
 int strm_filter ;
 int strm_get_args (int *,int,int *,char*,int*,int *) ;
 int strm_nil_value () ;
 int strm_stream_new (int ,int ,int *,void*) ;
 int strm_stream_value (int ) ;

__attribute__((used)) static int
exec_mvavg(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct mvavg_data* d;
  strm_int n;
  strm_value func;

  strm_get_args(strm, argc, args, "i|v", &n, &func);
  d = malloc(sizeof(struct mvavg_data)+n*sizeof(double));
  if (!d) return STRM_NG;
  d->num = n;
  d->i = 0;
  d->filled = FALSE;
  if (argc == 1) {
    d->func = strm_nil_value();
    d->func_p = FALSE;
  }
  else {
    d->func = func;
    d->func_p = TRUE;
  }
  *ret = strm_stream_value(strm_stream_new(strm_filter, iter_mvavg,
                                           ((void*)0), (void*)d));
  return STRM_OK;
}
