
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;
typedef size_t strm_int ;
typedef int strm_array ;


 scalar_t__ STRM_NG ;
 int STRM_OK ;
 int strm_ary_new (int *,size_t) ;
 int * strm_ary_ptr (int ) ;
 int strm_ary_value (int ) ;
 scalar_t__ strm_funcall (int *,int ,int,int *,int *) ;
 int strm_get_args (int *,int,int *,char*,int **,size_t*,int *) ;

__attribute__((used)) static int
ary_map(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value* v;
  strm_int len;
  strm_value func;
  strm_int i;
  strm_array a2;
  strm_value* v2;

  strm_get_args(strm, argc, args, "av", &v, &len, &func);
  a2 = strm_ary_new(((void*)0), len);
  v2 = strm_ary_ptr(a2);

  for (i=0; i<len; i++) {
    if (strm_funcall(strm, func, 1, &v[i], &v2[i]) == STRM_NG) {
      return STRM_NG;
    }
  }
  *ret = strm_ary_value(a2);
  return STRM_OK;
}
