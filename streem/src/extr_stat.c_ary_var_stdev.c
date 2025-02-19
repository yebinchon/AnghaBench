
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int STRM_NG ;
 int STRM_OK ;
 int convert_number (int *,int ,int ) ;
 double sqrt (double) ;
 int strm_float_value (double) ;
 int strm_get_args (int *,int,int *,char*,int **,int*,int *) ;
 int strm_number_p (int ) ;
 double strm_value_float (int ) ;

__attribute__((used)) static int
ary_var_stdev(strm_stream* strm, int argc, strm_value* args, strm_value* ret, int stdev)
{
  strm_value func;
  strm_value* v;
  int i, len;
  double s1, s2;

  strm_get_args(strm, argc, args, "a|v", &v, &len, &func);

  s1 = s2 = 0.0;
  if (argc == 0) {
    for (i=0; i<len; i++) {
      double x = strm_value_float(v[i]);
      x -= s1;
      s1 += x/(i+1);
      s2 += i * x * x / (i+1);
    }
  }
  else {
    for (i=0; i<len; i++) {
      strm_value val;
      double x;

      val = convert_number(strm, v[i], func);
      if (!strm_number_p(val)) {
        return STRM_NG;
      }
      x = strm_value_float(val);
      x -= s1;
      s1 += x/(i+1);
      s2 += i * x * x / (i+1);
    }
  }
  s2 = s2 / (i-1);
  if (stdev) {
    s2 = sqrt(s2);
  }
  *ret = strm_float_value(s2);
  return STRM_OK;
}
