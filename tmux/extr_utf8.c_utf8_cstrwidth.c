
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct utf8_data {int have; scalar_t__ width; } ;
typedef enum utf8_state { ____Placeholder_utf8_state } utf8_state ;


 int UTF8_DONE ;
 int UTF8_MORE ;
 int utf8_append (struct utf8_data*,char const) ;
 int utf8_open (struct utf8_data*,char const) ;

u_int
utf8_cstrwidth(const char *s)
{
 struct utf8_data tmp;
 u_int width;
 enum utf8_state more;

 width = 0;
 while (*s != '\0') {
  if ((more = utf8_open(&tmp, *s)) == UTF8_MORE) {
   while (*++s != '\0' && more == UTF8_MORE)
    more = utf8_append(&tmp, *s);
   if (more == UTF8_DONE) {
    width += tmp.width;
    continue;
   }
   s -= tmp.have;
  }
  if (*s > 0x1f && *s != 0x7f)
   width++;
  s++;
 }
 return (width);
}
