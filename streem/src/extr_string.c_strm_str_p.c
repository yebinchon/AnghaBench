
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;


 int FALSE ;




 int TRUE ;
 int strm_value_tag (int ) ;

int
strm_str_p(strm_value v)
{
  switch (strm_value_tag(v)) {
  case 129:
  case 131:
  case 130:
  case 128:
    return TRUE;
  default:
    return FALSE;
  }
}
