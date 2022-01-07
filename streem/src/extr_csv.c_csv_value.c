
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strm_value ;
typedef int strm_int ;
typedef enum csv_type { ____Placeholder_csv_type } csv_type ;





 int TYPE_STR ;
 int TYPE_TIME ;

 int csv_string (char const*,int,int) ;
 int isspace (int) ;
 int strm_float_value (double) ;
 int strm_int_value (long) ;

__attribute__((used)) static strm_value
csv_value(const char* p, strm_int len, enum csv_type ftype)
{
  const char *s = p;
  const char *send = s+len;
  long i=0;
  double f, pow = 1;
  enum csv_type type = TYPE_STR;

  switch (ftype) {
  case 128:
  case 129:

    while (isspace((int)*s)) s++;


    while (s<send) {
      switch (*s) {
      case '0': case '1': case '2': case '3': case '4':
      case '5': case '6': case '7': case '8': case '9':
        if (type == TYPE_STR) type = 130;
        i = i*10 + (*s - '0');
        pow *= 10;
        break;
      case '.':
        if (type == 131) {
          type = TYPE_TIME;
          break;
        }
        type = 131;
        f = i;
        i = 0;
        pow = 1;
        break;
      default:
        type = 128;
        break;
      }
      s++;
    }
  default:
    break;
  }

  switch (type) {
  case 130:
    return strm_int_value(i);
  case 131:
    f += i / pow;
    return strm_float_value(f);
  default:
    return csv_string(p, len, ftype);
  }

}
