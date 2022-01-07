
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ strm_value ;
typedef int strm_cfunc ;


 int FALSE ;






 int TRUE ;
 int strm_ary_eq (scalar_t__,scalar_t__) ;
 int strm_number_p (scalar_t__) ;
 int strm_str_eq (scalar_t__,scalar_t__) ;
 int strm_value_float (scalar_t__) ;
 int strm_value_tag (scalar_t__) ;
 int strm_value_val (scalar_t__) ;
 int strm_value_vptr (scalar_t__) ;

int
strm_value_eq(strm_value a, strm_value b)
{
  if (a == b) return TRUE;
  if (strm_value_tag(a) != strm_value_tag(b)) goto typediff;
  switch (strm_value_tag(a)) {
  case 133:
  case 128:
    return strm_ary_eq(a, b);
  case 129:
  case 130:
    return strm_str_eq(a, b);
  case 132:
    return (strm_cfunc)(intptr_t)strm_value_val(a) == (strm_cfunc)(intptr_t)strm_value_val(b);
  case 131:
    return strm_value_vptr(a) == strm_value_vptr(b);
  typediff:
  default:
    if (strm_number_p(a) && strm_number_p(b)) {
      return strm_value_float(a) == strm_value_float(b);
    }
    return FALSE;
  }
}
