
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_stream ;


 int STRM_NG ;
 int STRM_OK ;
 int convert_number (int *,int ,int ) ;
 scalar_t__ fabs (double) ;
 int strm_float_value (double) ;
 int strm_get_args (int *,int,int *,char*,int **,int*,int *) ;
 int strm_number_p (int ) ;
 double strm_value_float (int ) ;

__attribute__((used)) static int
ary_sum_avg(strm_stream* strm, int argc, strm_value* args, strm_value* ret, int avg)
{
  int i, len;
  strm_value* v;
  double sum = 0;
  double c = 0;
  strm_value func;

  strm_get_args(strm, argc, args, "a|v", &v, &len, &func);
  if (argc == 1) {
    for (i=0; i<len; i++) {
      double x, t;

      if (!strm_number_p(v[i])) {
        return STRM_NG;
      }
      x = strm_value_float(v[i]);
      t = sum + x;
      if (fabs(sum) >= fabs(x))
        c += ((sum - t) + x);
      else
        c += ((x - t) + sum);
      sum = t;
    }
  }
  else {
    for (i=0; i<len; i++) {
      strm_value val;
      double x, t;

      val = convert_number(strm, v[i], func);
      if (!strm_number_p(val)) {
        return STRM_NG;
      }
      x = strm_value_float(val);
      t = sum + x;
      if (fabs(sum) >= fabs(x))
        c += ((sum - t) + x);
      else
        c += ((x - t) + sum);
      sum = t;
    }
  }
  sum += c;
  if (avg) {
    *ret = strm_float_value(sum/len);
  }
  else {
    *ret = strm_float_value(sum);
  }
  return STRM_OK;
}
