
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct correl_data {scalar_t__ sxy; scalar_t__ syy; scalar_t__ sxx; scalar_t__ sy; scalar_t__ sx; scalar_t__ n; } ;
typedef int strm_value ;
typedef int strm_stream ;


 int STRM_NG ;
 int STRM_OK ;
 int correl_finish ;
 int iter_correl ;
 struct correl_data* malloc (int) ;
 int strm_filter ;
 int strm_get_args (int *,int,int *,char*) ;
 int strm_stream_new (int ,int ,int ,void*) ;
 int strm_stream_value (int ) ;

__attribute__((used)) static int
exec_correl(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct correl_data* d;

  strm_get_args(strm, argc, args, "");
  d = malloc(sizeof(struct correl_data));
  if (!d) return STRM_NG;
  d->n = 0;
  d->sx = d->sy = d->sxx = d->syy = d->sxy = 0;
  *ret = strm_stream_value(strm_stream_new(strm_filter, iter_correl,
                                           correl_finish, (void*)d));
  return STRM_OK;
}
