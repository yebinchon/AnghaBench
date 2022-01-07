
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utf8_data {int dummy; } ;
typedef enum utf8_state { ____Placeholder_utf8_state } utf8_state ;


 int UTF8_DONE ;
 int UTF8_MORE ;
 int strlen (char const*) ;
 int utf8_append (struct utf8_data*,char const) ;
 int utf8_open (struct utf8_data*,char const) ;

int
utf8_isvalid(const char *s)
{
 struct utf8_data ud;
 const char *end;
 enum utf8_state more;

 end = s + strlen(s);
 while (s < end) {
  if ((more = utf8_open(&ud, *s)) == UTF8_MORE) {
   while (++s < end && more == UTF8_MORE)
    more = utf8_append(&ud, *s);
   if (more == UTF8_DONE)
    continue;
   return (0);
  }
  if (*s < 0x20 || *s > 0x7e)
   return (0);
  s++;
 }
 return (1);
}
