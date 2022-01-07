
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_string ;
typedef int strm_int ;


 int isprint (unsigned char const) ;
 int strm_str_len (int ) ;
 scalar_t__ strm_str_ptr (int ) ;

__attribute__((used)) static strm_int
str_dump_len(strm_string str)
{
  strm_int len = 2;
  const unsigned char *p = (unsigned char*)strm_str_ptr(str);
  const unsigned char *pend = p + strm_str_len(str);

  while (p < pend) {
    switch (*p) {
    case '\n': case '\r': case '\t': case '"':
      len += 2;
      break;
    default:
      if (isprint(*p) || (*p&0xff) > 0x7f) {
        len++;
      }
      else {
        len += 3;
      }
    }
    p++;
  }
  return len;
}
