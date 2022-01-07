
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_string {int len; } ;
typedef int strm_string ;
typedef int strm_int ;






 int * VAL_PTR (int ) ;
 int strm_value_tag (int ) ;
 scalar_t__ strm_value_vptr (int ) ;

strm_int
strm_str_len(strm_string s)
{
  switch (strm_value_tag(s)) {
  case 129:
    return (strm_int)VAL_PTR(s)[0];
  case 131:
    return 6;
  case 128:
  case 130:
    {
      struct strm_string* str = (struct strm_string*)strm_value_vptr(s);

      return str->len;
    }
  default:
    return 0;
  }
}
