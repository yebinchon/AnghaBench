
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_string {char const* ptr; } ;
typedef int strm_string ;






 char const* VALP_PTR (int *) ;
 int strm_value_tag (int ) ;
 scalar_t__ strm_value_vptr (int ) ;

const char*
strm_strp_ptr(strm_string* s)
{
  switch (strm_value_tag(*s)) {
  case 129:
    return VALP_PTR(s)+1;
  case 131:
    return VALP_PTR(s);
  case 128:
  case 130:
    {
      struct strm_string* str = (struct strm_string*)strm_value_vptr(*s);
      return str->ptr;
    }
  default:
    return ((void*)0);
  }
}
