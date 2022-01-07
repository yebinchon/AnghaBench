
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int int32_t ;



 int assert (int) ;
 int strm_float_p (int ) ;
 int strm_to_float (int ) ;
 int strm_to_int (int ) ;
 int const strm_value_tag (int ) ;

int32_t
strm_value_int(strm_value v)
{
  switch (strm_value_tag(v)) {
  case 128:
    return strm_to_int(v);
  default:
    if (strm_float_p(v))
      return strm_to_float(v);
    assert(strm_value_tag(v) == 128);
    break;
  }

  return 0;
}
