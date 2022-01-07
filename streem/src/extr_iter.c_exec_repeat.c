
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repeat_data {scalar_t__ count; int v; } ;
typedef int strm_value ;
typedef int strm_stream ;
typedef scalar_t__ strm_int ;


 int STRM_NG ;
 int STRM_OK ;
 int fin_repeat ;
 int gen_repeat ;
 struct repeat_data* malloc (int) ;
 int strm_get_args (int *,int,int *,char*,int *,scalar_t__*) ;
 int strm_producer ;
 int strm_raise (int *,char*) ;
 int strm_stream_new (int ,int ,int ,void*) ;
 int strm_stream_value (int ) ;

__attribute__((used)) static int
exec_repeat(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value v;
  strm_int n = -1;
  struct repeat_data *d;

  strm_get_args(strm, argc, args, "v|i", &v, &n);
  if (argc == 2 && n <= 0) {
    strm_raise(strm, "invalid count number");
    return STRM_NG;
  }
  d = malloc(sizeof(*d));
  d->v = v;
  d->count = n;
  *ret = strm_stream_value(strm_stream_new(strm_producer, gen_repeat, fin_repeat, (void*)d));
  return STRM_OK;
}
