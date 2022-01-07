
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;


 int FALSE ;
 int TRUE ;
 scalar_t__ strm_float_p (int ) ;
 scalar_t__ strm_int_p (int ) ;

int
strm_number_p(strm_value v)
{
  if (strm_int_p(v) || strm_float_p(v))
    return TRUE;
  else
    return FALSE;
}
