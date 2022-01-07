
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 scalar_t__ STRM_NG ;
 int STRM_OK ;
 scalar_t__ strm_funcall (int *,int ,int,int *,int *) ;
 int strm_get_args (int *,int,int *,char*,int **,int*,int *) ;
 int strm_nil_value () ;
 double strm_value_float (int ) ;

__attribute__((used)) static int
ary_minmax(strm_stream* strm, int argc, strm_value* args, strm_value* ret, int min)
{
  strm_value func = strm_nil_value();
  int i, len;
  strm_value* v;
  strm_value e, val;
  double num, f;

  strm_get_args(strm, argc, args, "a|v", &v, &len, &func);
  if (len == 0) {
    *ret = strm_nil_value();
    return STRM_OK;
  }
  val = v[0];
  if (argc == 2) {
    if (strm_funcall(strm, func, 1, &v[0], &e) == STRM_NG) {
      return STRM_NG;
    }
  }
  else {
    e = v[0];
  }
  num = strm_value_float(e);
  for (i=1; i<len; i++) {
    if (argc == 2) {
      if (strm_funcall(strm, func, 1, &v[i], &e) == STRM_NG) {
        return STRM_NG;
      }
    }
    else {
      e = v[0];
    }
    f = strm_value_float(e);
    if (min) {
      if (num > f) {
        num = f;
        val = v[i];
      }
    }
    else {
      if (num < f) {
        num = f;
        val = v[i];
      }
    }
  }
  *ret = val;
  return STRM_OK;
}
