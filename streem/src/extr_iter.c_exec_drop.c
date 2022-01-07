
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct take_data {scalar_t__ n; } ;
typedef int strm_value ;
typedef int strm_stream ;
typedef scalar_t__ strm_int ;


 int STRM_NG ;
 int STRM_OK ;
 int iter_drop ;
 struct take_data* malloc (int) ;
 int strm_filter ;
 int strm_get_args (int *,int,int *,char*,scalar_t__*) ;
 int strm_raise (int *,char*) ;
 int strm_stream_new (int ,int ,int *,void*) ;
 int strm_stream_value (int ) ;

__attribute__((used)) static int
exec_drop(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct take_data* d;
  strm_int n;

  strm_get_args(strm, argc, args, "i", &n);
  if (n < 0) {
    strm_raise(strm, "negative iteration");
    return STRM_NG;
  }
  d = malloc(sizeof(*d));
  if (!d) return STRM_NG;
  d->n = n;
  *ret = strm_stream_value(strm_stream_new(strm_filter, iter_drop, ((void*)0), (void*)d));
  return STRM_OK;
}
