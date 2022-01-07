
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_string ;
typedef int strm_int ;


 int isprint (int) ;
 char* malloc (int ) ;
 int sprintf (char*,char*,int) ;
 int strm_str_len (int ) ;
 int strm_str_new (char*,int ) ;
 scalar_t__ strm_str_ptr (int ) ;

__attribute__((used)) static strm_string
str_dump(strm_string str, strm_int len)
{
  char *buf = malloc(len);
  char *s = buf;
  char *p = (char*)strm_str_ptr(str);
  char *pend = p + strm_str_len(str);

  *s++ = '"';
  while (p<pend) {
    switch (*p) {
    case '\n':
      *s++ = '\\';
      *s++ = 'n';
      break;
    case '\r':
      *s++ = '\\';
      *s++ = 'r';
      break;
    case '\t':
      *s++ = '\\';
      *s++ = 't';
      break;
    case 033:
      *s++ = '\\';
      *s++ = 'e';
      break;
    case '\0':
      *s++ = '\\';
      *s++ = '0';
      break;
    case '"':
      *s++ = '\\';
      *s++ = '"';
      break;
    default:
      if (isprint((int)*p) || (*p&0xff) > 0x7f) {
        *s++ = (*p&0xff);
      }
      else {
        sprintf(s, "\\x%02x", (int)*p&0xff);
        s+=4;
      }
    }
    p++;
  }
  *s++ = '"';

  return strm_str_new(buf, len);
}
