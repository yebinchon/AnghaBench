
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;


 int assert (scalar_t__) ;
 scalar_t__ strm_float_p (int ) ;
 scalar_t__ strm_int_p (int ) ;
 double strm_to_float (int ) ;
 scalar_t__ strm_to_int (int ) ;

double
strm_value_float(strm_value v)
{
  if (strm_int_p(v)) {
    return (double)strm_to_int(v);
  }
  else if (strm_float_p(v)) {
    return strm_to_float(v);
  }
  else {
    assert(strm_float_p(v));
  }

  return 0.0;
}
