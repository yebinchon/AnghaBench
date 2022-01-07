
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;
typedef size_t strm_int ;


 scalar_t__ STRM_NG ;
 int STRM_OK ;
 int strm_ary_value (int ) ;
 scalar_t__ strm_funcall (int *,int ,int,int *,int *) ;
 int strm_get_args (int *,int,int *,char*,int **,size_t*,int *) ;

__attribute__((used)) static int
ary_each(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value* v;
  strm_int len;
  strm_value func;
  strm_int i;
  strm_value r;

  strm_get_args(strm, argc, args, "av", &v, &len, &func);

  for (i=0; i<len; i++) {
    if (strm_funcall(strm, func, 1, &v[i], &r) == STRM_NG) {
      return STRM_NG;
    }
  }
  *ret = strm_ary_value(args[0]);
  return STRM_OK;
}
