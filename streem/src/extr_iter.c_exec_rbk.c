
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbk_data {int tbl; int func; } ;
typedef int strm_value ;
typedef int strm_stream ;


 int STRM_NG ;
 int STRM_OK ;
 int iter_rbk ;
 int kh_init (int ) ;
 int khash_t (int ) ;
 struct rbk_data* malloc (int) ;
 int rbk ;
 int rbk_finish ;
 int strm_filter ;
 int strm_get_args (int *,int,int *,char*,int *) ;
 int strm_stream_new (int ,int ,int ,void*) ;
 int strm_stream_value (int ) ;
 int t ;

__attribute__((used)) static int
exec_rbk(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct rbk_data *d;
  khash_t(rbk) *t;
  strm_value func;

  strm_get_args(strm, argc, args, "v", &func);
  t = kh_init(rbk);
  if (!t) return STRM_NG;
  d = malloc(sizeof(*d));
  d->tbl = t;
  d->func = func;
  *ret = strm_stream_value(strm_stream_new(strm_filter, iter_rbk, rbk_finish, (void*)d));
  return STRM_OK;
}
