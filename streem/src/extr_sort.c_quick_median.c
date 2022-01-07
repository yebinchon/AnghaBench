
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef size_t strm_int ;


 int quick_select (int *,int) ;
 int strm_float_value (double) ;
 scalar_t__ strm_number_p (int ) ;
 double strm_value_float (int ) ;

__attribute__((used)) static strm_value
quick_median(strm_value *p, int len)
{
  strm_value v = quick_select(p, len);

  if (len%2 == 0 && strm_number_p(v)) {
    strm_int next = len/2;
    if (strm_number_p(p[next])) {
       double x = strm_value_float(v);
       double y = strm_value_float(p[next]);

       return strm_float_value((x + y)/2);
    }
  }
  return v;
}
