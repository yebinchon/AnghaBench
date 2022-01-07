
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strm_string {char const* ptr; } ;
typedef int strm_string ;
typedef size_t strm_int ;






 size_t* VAL_PTR (int ) ;
 int memcpy (char*,size_t*,int) ;
 int strm_value_tag (int ) ;
 scalar_t__ strm_value_vptr (int ) ;

const char*
strm_str_cstr(strm_string s, char buf[])
{
  strm_int len;

  switch (strm_value_tag(s)) {
  case 129:
    len = VAL_PTR(s)[0];
    memcpy(buf, VAL_PTR(s)+1, len);
    buf[len] = '\0';
    return buf;
  case 131:
    memcpy(buf, VAL_PTR(s), 6);
    buf[6] = '\0';
    return buf;
  case 128:
  case 130:
    {
      struct strm_string* str = (struct strm_string*)strm_value_vptr(s);
      return str->ptr;
    }
  default:
    return ((void*)0);
  }
}
