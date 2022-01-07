
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_string ;


 int FALSE ;




 int TRUE ;
 int strm_value_tag (int ) ;

int
strm_str_intern_p(strm_string s)
{
  switch (strm_value_tag(s)) {
  case 129:
  case 131:
  case 130:
    return TRUE;
  case 128:
  default:
    return FALSE;
  }
}
